# Use an official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the HTML file into the Nginx server's default directory
#ADD . /app
COPY . /usr/share/nginx/html/

# Expose port 80 to allow traffic to the container
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
