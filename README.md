FastCGI Proxy Server
=====================

facebook libphenom + fastcgi_client + php-fpm

Install
--------

gcc -Wl,-rpath=/home/work/local/libphenom/lib -O2 -I./include fcgi_header.c fcgi.c `pkg-config libphenom --cflags --libs` -lphenom -L/home/work/local/libphenom/lib



Reference
---------


Nginx fastcgi module
---------------------

- Supports only a single request per connection (no request multiplexing).
- Only FCGI_RESPONDER role is supported.
