# Use a base image for PHP and Apache
FROM php:8.1-apache

# Set the working directory
WORKDIR /var/www/html

# Explicitly specify relative paths
COPY index.php index.php
COPY bg.png bg.png
COPY picture.png picture.png

# Configure Apache
RUN a2enmod rewrite

# Expose port 80 for the web server
EXPOSE 80

# Default command to start Apache
CMD ["apache2-foreground"]
