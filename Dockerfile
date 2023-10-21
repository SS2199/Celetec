# Use an official Node.js runtime as the base image
FROM node:16

# Create the application directory
WORKDIR  usr/local/app

# Copy package.json and package-lock.json to the container
 COPY usr/local/app

# Install Angular CLI globally
 # RUN npm install -g @angular/cli

# # Install project dependencies
 RUN npm install
 RUN npm run build

# Copy the entire project's source code to the container
FROM nginx:latest
COPY  --from=build/usr/local/app/dist/celestradepro/usr/share/nginx/html
 .

# Expose the default Angular development server port (4200)
EXPOSE 4200

# Start the Angular development server
CMD ["npm", "start"]
