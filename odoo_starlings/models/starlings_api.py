# -*- coding: utf-8 -*-
from odoo import models, fields, api, _
from odoo.exceptions import UserError
import requests
import logging

_logger = logging.getLogger(__name__)

class StarlingsAPI(models.Model):
    _name = 'starlings.api'
    _description = 'Conexión API Starlings TravelCaster'

    @api.model
    def _get_auth_token(self):
        """Obtener token de autenticación para Odoo 13"""
        try:
            auth_url = "https://testapi.webtravelcaster.com/api/1.6/auth/login"
            response = requests.post(
                auth_url,
                json={
                    "username": "testjazztour",
                    "password": "dh2gcSMUA7"
                },
                timeout=10
            )
            response.raise_for_status()
            return response.json().get('token')
        except requests.exceptions.RequestException as e:
            _logger.error("Starlings API Error: %s", str(e))
            raise UserError(_("Error de conexión con Starlings: %s") % str(e))

    @api.model
    def search_flights(self, origin, destination, departure_date):
        """Versión compatible con Odoo 13"""
        token = self._get_auth_token()
        if not token:
            return False
            
        search_url = "https://testapi.webtravelcaster.com/api/1.6/flight/search"
        headers = {
            "Authorization": "Bearer %s" % token,
            "Content-Type": "application/json"
        }
        params = {
            'origin': origin,
            'destination': destination,
            'departure_date': departure_date,
            'currency': 'USD'
        }

        try:
            response = requests.get(search_url, headers=headers, params=params, timeout=15)
            response.raise_for_status()
            return response.json()
        except Exception as e:
            _logger.error("Flight search failed: %s", str(e))
            raise UserError(_("Error al buscar vuelos: %s") % str(e))
