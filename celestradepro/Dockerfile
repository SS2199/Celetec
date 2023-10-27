# # Stage 1: Build Angular Application
FROM node:14 AS builder

# Create the application directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Install project dependencies
RUN npm install --force

# Copy the entire project's source code to the container
COPY . .

# Build the Angular application
RUN ng build --prod

# Stage 2: Serve Angular Application using Nginx
FROM nginx:alpine

# Remove default Nginx contents
RUN rm -rf /usr/share/nginx/html/*

# Copy the built Angular application from the builder stage to the Nginx HTML directory
COPY --from=builder /app/dist/ /usr/share/nginx/html/

# Expose the default Nginx port (80)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
