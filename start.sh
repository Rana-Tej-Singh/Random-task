#!/bin/bash

if [ $x == "green" ];
then
       cp -rf /webapp1/* /var/www/html/
       httpd -DFOREGROUND
elif [ $x == "red" ];
then
        cp -rf /webapp2/* /var/www/html/
        httpd -DFOREGROUND
else
         echo "No page available at this moment. Error 404" > /var/www/html/index.html
         httpd -DFOREGROUND
fi
