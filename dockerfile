FROM php:8.1-apache

WORKDIR /var/www/html

COPY /full/path/to/index.php ./index.php
COPY /full/path/to/bg.png ./bg.png
COPY /full/path/to/picture.png ./picture.png

RUN a2enmod rewrite

EXPOSE 80

CMD ["apache2-foreground"]
