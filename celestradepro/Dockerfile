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
RUN npm run build

# Stage 2: Create a lightweight Nginx image and copy the built Angular app
FROM nginx:alpine

# Copy the built Angular app from the build stage to the nginx web server's directory
COPY --from=builder /app/dist/celestradepro /usr/share/nginx/html

# Use NGINX as the base image for the final stage

# Configure Nginx
# RUN rm -rf /etc/nginx/conf.d/default.conf
# COPY nginx.conf /etc/nginx/conf.d

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
