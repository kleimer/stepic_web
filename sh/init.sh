#!/bin/bash
/etc/init.d/nginx stop
/etc/init.d/nginx star
ln -sf ~/web/etc/nginx.cofig /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
mkdir /etc/gunicorn.d
ln -sf ~/etc/gunicorn-wsgi.conf /etc/gunicorn.d/gunicorn-wsgi.conf
ln -sf ~/etc/gunicorn-django.conf /etc/gunicorn.d/gunicorn-django.conf
