# Use an official lightweight web server as a base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the website files into the container
COPY ./website/ /usr/share/nginx/html

# Expose port 99 to the host
EXPOSE 99

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
