#!/bin/sh

python manage.py migrate
python manage.py loaddata stock_products.json
python manage.py collectstatic
gunicorn stocks_products.wsgi -b 0.0.0.0:8000 -w 3