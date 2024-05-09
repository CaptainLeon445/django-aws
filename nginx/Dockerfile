# Stage 1: Build NGINX configuration
FROM nginx:alpine AS builder

# Copy NGINX configuration files
COPY default.conf /etc/nginx/nginx.conf

# Stage 2: Final NGINX image
FROM nginx:alpine

# Copy NGINX configuration from the builder stage
COPY --from=builder /etc/nginx/nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
