#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install Python dependencies
echo "Installing dependencies from requirements.txt"
pip install -r requirements.txt

# Run Django migrations
echo "Running migrations"
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

# Collect static files
echo "Collecting static files"
python3 manage.py collectstatic --noinput
