#!/bin/bash
/etc/init.d/nginx stop
/etc/init.d/nginx star
ln -sf ~/web/etc/nginx.config /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
ln -sf ~/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/gunicorn-wsgi.conf
ln -sf ~/web/etc/gunicorn-django.conf /etc/gunicorn.d/gunicorn-django.conf
