#!/bin/sh

echo "Collect static..."
python manage.py collectstatic --no-input
echo "---------------------------"

echo "Creating migrations..."
python manage.py makemigrations app
echo "----------------------------"

echo "Starting migrations...."
python manage.py migrate
echo "---------------------------"

echo "Starting server..."
gunicorn --reload server.wsgi:application --bind 0.0.0.0:8000