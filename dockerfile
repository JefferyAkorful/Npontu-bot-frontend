FROM php:8.1-apache

WORKDIR /var/www/html

# Copy all frontend files to the Apache root directory
COPY . .

# Set ServerName to suppress the warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Enable necessary Apache modules
RUN a2enmod rewrite

EXPOSE 80

CMD ["apache2-foreground"]
