# -*- coding: utf-8 -*-
from odoo import models, fields, api, _
from odoo.exceptions import ValidationError

class TravelQuotation(models.Model):
    _name = 'travel.quotation'
    _inherit = ['mail.thread']
    _description = 'Cotización de Viajes Starlings'

    name = fields.Char(
        string='Referencia',
        required=True,
        default=lambda self: _('New'),
        copy=False
    )
    origin = fields.Char(
        string='Código IATA Origen',
        size=3,
        required=True,
        help="Ej: BUE para Buenos Aires"
    )
    destination = fields.Char(
        string='Código IATA Destino',
        size=3,
        required=True
    )
    departure_date = fields.Date(
        string='Fecha de Salida',
        required=True
    )
    return_date = fields.Date(string='Fecha de Regreso')
    flight_data = fields.Text(
        string='Respuesta JSON',
        readonly=True
    )
    state = fields.Selection([
        ('draft', 'Borrador'),
        ('confirmed', 'Confirmado'),
        ('done', 'Completado'),
        ('cancel', 'Cancelado')],
        string='Estado',
        default='draft',
        tracking=True
    )

    @api.model
    def create(self, vals):
        if vals.get('name', _('New')) == _('New'):
            vals['name'] = self.env['ir.sequence'].next_by_code('travel.quotation') or _('New')
        return super(TravelQuotation, self).create(vals)

    @api.multi
    def action_search_flights(self):
        """Método adaptado para Odoo 13"""
        self.ensure_one()
        api = self.env['starlings.api']
        
        if not self.departure_date:
            raise ValidationError(_("Debe ingresar una fecha de salida válida"))
            
        flight_data = api.search_flights(
            self.origin.upper(),
            self.destination.upper(),
            self.departure_date.strftime('%Y-%m-%d')
        )
        
        if flight_data:
            self.write({
                'flight_data': str(flight_data),
                'state': 'confirmed'
            })
