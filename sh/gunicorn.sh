gunicorn ask.wsgi:application -c ~/web/etc/gunicorn-django.conf &
gunicorn -c /etc/gunicorn.d/gunicorn-wsgi.conf hello:app &

