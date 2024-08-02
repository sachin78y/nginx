FROM nginx:latest

# Create necessary directories and change ownership to the nginx user
RUN mkdir -p /var/cache/nginx/client_temp && \
    chown -R nginx:nginx /var/cache/nginx

USER nginx

EXPOSE 80

