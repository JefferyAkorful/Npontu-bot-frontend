FROM php:8.1-apache

WORKDIR /var/www/html

# Copy all frontend files to the Apache root directory
COPY . .

# Set ServerName to suppress the warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Enable necessary Apache modules
RUN a2enmod rewrite headers

# Configure CORS in Apache
RUN echo '<Directory /var/www/html>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>\n\
<IfModule mod_headers.c>\n\
    Header always set Access-Control-Allow-Origin "*"\n\
    Header always set Access-Control-Allow-Methods "GET, POST, OPTIONS"\n\
    Header always set Access-Control-Allow-Headers "Origin, Content-Type, Accept, Authorization"\n\
</IfModule>' >> /etc/apache2/sites-enabled/000-default.conf

# Expose port 80 for the web server
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
