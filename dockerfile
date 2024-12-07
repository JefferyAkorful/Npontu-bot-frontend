FROM php:8.1-apache

WORKDIR /var/www/html

# Copy all files in the current directory to the container
COPY . .

RUN a2enmod rewrite

EXPOSE 80

CMD ["apache2-foreground"]
