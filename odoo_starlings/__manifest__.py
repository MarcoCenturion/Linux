# -*- coding: utf-8 -*-
{
    'name': "Starlings Travel API Connector",
    'summary': """Integración con API Starlings para cotizaciones de vuelos""",
    'description': """
        Conexión con TravelCaster API v1.6
        Credenciales de testing incluidas
    """,
    'version': '13.0.1.0.0',
    'author': "Marco Centurion",
    'website': "https://github.com/marcocenturion/odoo_starlings",
    'category': 'Tools',
    'depends': ['base', 'sale'],
    'data': [
        'security/ir.model.access.csv',
        'views/quotation_views.xml',
        'views/menu_views.xml',
    ],
    'demo': [],
    'installable': True,
    'application': True,
}
