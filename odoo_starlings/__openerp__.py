{
    'name': 'Starlings Connector',
    'version': '13.0.1.0.0',
    'depends': ['base'],
    'data': [
        'security/ir.model.access.csv',
        'models/travel_quaotation.py',
        'views/quotation_views.xml',  # ¡Este debe ir DESPUÉS del modelo!
    ],
    'installable': True,
    'application': True,
}
