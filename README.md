# Team-X Bank

A simple Django-based demo banking system with user accounts, transactions, and loan features. Built for learning and demo purposes.

Live site: https://team-x-bank.onrender.com/

## Features

- User registration, login, and profile management
- Deposit, withdrawal, and transaction reporting
- Loan request and loan payment flow
- Responsive templates using Tailwind CSS (CDN)

## Requirements

- Python 3.10
- PostgreSQL (recommended for production) or SQLite (development)

## Local development

1. Create and activate a virtual environment (recommended):

```bash
python -m venv .venv
source .venv/Scripts/activate   # Windows
# or: source .venv/bin/activate  # macOS / Linux
```

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Create a `.env` file with the following keys:

- `SECRET_KEY`
- `DATABASE_URL` (optional; defaults to sqlite if not set)
- `EMAIL` and `EMAIL_PASSWORD` (optional for email features)

4. Apply migrations and run the dev server:

```bash
py manage.py migrate
py manage.py runserver
```

Open http://127.0.0.1:8000

## Deploying to Render

This repo contains a `render.yaml` and `Procfile` for Render. Steps:

1. Push your repository to GitHub.
2. In the Render dashboard, create a new Web Service from your repo.
3. Use `pip install -r requirements.txt` as the build command and `gunicorn mamar_bank.wsgi --log-file -` as the start command (Procfile is included).
4. Set environment variables in Render: `SECRET_KEY`, `DATABASE_URL` (Postgres), `EMAIL`, `EMAIL_PASSWORD`, optionally `ALLOWED_HOSTS` and `DEBUG`.
5. After deploy, run in Render Shell:

```bash
py manage.py migrate
py manage.py collectstatic --noinput
```

## Notes

- This project uses WhiteNoise for static file serving in production.
- For production use, set `DEBUG=False` and configure `ALLOWED_HOSTS`.

If you want, I can push these changes and run a Render re-deploy script (you'll need to provide Render API access or trigger deploy from your account).
