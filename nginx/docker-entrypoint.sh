#!/bin/bash 

### cat file nginx.conf ###
cat /nginx-conf-file/nginx.conf

### copy file to /etc/nginx/ ###
cp /nginx-conf-file/nginx.conf /etc/nginx/

### cat file index ###
cat /nginx-index-file/index.html

### copy index to html dir ###
cp --remove-destination /nginx-index-file/index.html /usr/share/nginx/html/ 

### run nginx binary file with options ###
exec /usr/sbin/nginx -g 'daemon off;'
