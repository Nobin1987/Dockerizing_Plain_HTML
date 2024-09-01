# Docker Nginx Project

This project demonstrates how to set up a simple web server using Nginx in a Docker container. It includes a custom HTML page and Nginx configuration.

## Files

### 1. index.html

This file contains the content of our web page. It's a simple HTML file that displays "Hello Docker!" in the browser.

Location: `/usr/share/nginx/html/index.html` (inside the container)

### 2. nginx.conf

This is the Nginx configuration file. It sets up the server to listen on port 80 and serve our `index.html` file.

Key configurations:
- Listens on port 80
- Sets `/usr/share/nginx/html` as the root directory
- Uses `index.html` as the default index file

Location: `/etc/nginx/nginx.conf` (inside the container)

### 3. Dockerfile

This file defines how to build our Docker image. It uses the official Nginx image as a base and adds our custom files.

Key steps:
- Uses `nginx:latest` as the base image
- Copies `index.html` and `nginx.conf` to the appropriate locations in the container
- Exposes port 80
- Sets the command to start Nginx when the container runs

## Building and Running the Container

1. **Build the Docker image:**

   ```
   docker build . -t nobin1987/plain_html:1.0
   ```

2. **Run the Docker container:**

   ```
   docker run -d -p 90:80 nobin1987/plain_html:1.0
   ```

3. **Access the web page:**

   Open a web browser and navigate to `http://localhost:90`. You should see the "Hello Docker!" message.

## Stopping the Container

To stop the running container:

1. Find the container ID:

   ```
   docker ps
   ```

2. Stop the container:

   ```
   docker stop <container_id>
   ```

## Modifying the Project

If you make changes to any of the files (`index.html`, `nginx.conf`, or `Dockerfile`), you'll need to rebuild the Docker image and run a new container for the changes to take effect.

