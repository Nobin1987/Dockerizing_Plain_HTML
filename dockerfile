FROM nginx:latest

# Copy the custom index.html file to the appropriate location in the container
COPY index.html /usr/share/nginx/html/index.html

# Copy the custom nginx.conf file to the appropriate location in the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]