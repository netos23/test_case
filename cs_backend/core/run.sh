#!/bin/bash

python3 manage.py collectstatic --no-input
python3 manage.py migrate --no-input
uwsgi  --http :8000   --ini /etc/uwsgi.ini

