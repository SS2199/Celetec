# Use an official Node.js runtime as the base image
FROM node:14

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
FROM nginx:alpine
COPY --from=build /app/dist/celestradepro/ /usr/share/nginx/html

# Expose the default Angular development server port (4200)
EXPOSE 4200

# Start the Angular development server
CMD ["npm", "start"]
