#!/usr/bin/env bash
# Run migrations and collectstatic on Render (execute from Render Shell or CI)
set -e
python manage.py migrate --noinput
python manage.py collectstatic --noinput
echo "Post-deploy tasks completed"
