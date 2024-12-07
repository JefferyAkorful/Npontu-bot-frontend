# Use a base image with PHP and Apache
FROM php:8.1-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the frontend files to the Apache root directory
COPY index.php .
COPY bg.png .
COPY picture.png .

# Set up environment variable for the backend URL (optional)
ENV BACKEND_API_URL="https://npontu-bot-production.up.railway.app"

# Enable Apache's rewrite module
RUN a2enmod rewrite

# Expose port 80 for the Apache server
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]
