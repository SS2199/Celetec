# Use an official Node.js runtime as the base image
FROM node:16

# Create the application directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Angular CLI globally (if not already installed)
RUN npm install -g @angular/cli

# Install project dependencies
RUN npm install

# Copy the entire project's source code to the container
COPY . .

# Build the Angular application
RUN ng build --configuration=production

# Stage 2: Serve the Angular application using Nginx
FROM nginx:latest

# Copy the built Angular app from the build stage to Nginx
COPY --from=build /usr/src/app/dist/celestradepro /usr/share/nginx/html

# Expose port 80 (default for HTTP)
EXPOSE 4200
