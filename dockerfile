# Use a base image for PHP and Apache
FROM php:8.1-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy frontend files to the Apache root directory
COPY index.php .
COPY bg.png .
COPY picture.png .

# Enable Apache rewrite module
RUN a2enmod rewrite

# Expose port 80 for the web server
EXPOSE 80

# Default command to start Apache
CMD ["apache2-foreground"]
