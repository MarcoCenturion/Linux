# -*- coding: utf-8 -*-
from odoo import models, fields, api

class TravelQuotation(models.Model):
    _name = 'travel.quotation'  # ¡Este nombre DEBE coincidir con el CSV!
    _description = 'Cotización de Viajes'

    name = fields.Char(
        string='Referencia',
        required=True,
        default=lambda self: self.env['ir.sequence'].next_by_code('travel.quotation')
    )
    origin = fields.Char(string='Origen (IATA)', size=3, required=True)
    destination = fields.Char(string='Destino (IATA)', size=3, required=True)
    departure_date = fields.Date(string='Fecha Salida', required=True)
    return_date = fields.Date(string='Fecha Regreso')
    flight_data = fields.Text(string='Respuesta API')
    state = fields.Selection([
        ('draft', 'Borrador'),
        ('confirmed', 'Confirmado'),
        ('done', 'Completado')],
        default='draft'
    )

    @api.model
    def create(self, vals):
        if vals.get('name', 'New') == 'New':
            vals['name'] = self.env['ir.sequence'].next_by_code('travel.quotation') or 'New'
        return super(TravelQuotation, self).create(vals)
