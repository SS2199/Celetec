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
RUN rm -rf /usr/share/nginx/html/*

# Copy your Angular application's build output to the HTML directory
COPY --from=build /usr/local/app/dist/celestradepro /usr/share/nginx/html


# Expose the default Angular development server port (4200)
EXPOSE 4200

# Start the Angular development server
CMD ["npm", "start"]
