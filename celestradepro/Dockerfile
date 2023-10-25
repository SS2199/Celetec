# Stage 1: Build the Angular app
FROM node:16 as builder

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json from the Angular app directory to the container
COPY ./package*.json ./

# Install dependencies


# Copy the entire Angular app source code from the Angular app directory to the container
COPY . .

# Build the Angular app


# Stage 2: Create a lightweight Nginx image and copy the built Angular app
FROM nginx:alpine

# Set the working directory for the Nginx stage
WORKDIR /usr/share/nginx/html

# Copy the built Angular app from the builder stage to the nginx web server's directory
COPY --from=build /app/dist/celestradepro /usr/share/nginx/html

# Remove the default Nginx configuration file


# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
