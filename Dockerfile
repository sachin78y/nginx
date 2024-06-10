# Use the official Nginx image as the base image
FROM nginx:latest

# Create necessary directories and set permissions
RUN mkdir -p /var/cache/nginx/client_temp /var/run/nginx \
    && chmod -R 777 /var/cache/nginx /var/run/nginx /var/run/

# Copy custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080
EXPOSE 8080
