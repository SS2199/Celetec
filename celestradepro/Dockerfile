# Use an official Node.js runtime as the base image
FROM node:16

# Create the application directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./


# Copy the entire project's source code to the container
COPY . .

# Expose the default Angular development server port (4200)
EXPOSE 4200

# Start the Angular development server
CMD ["npm", "start", "--host", "0.0.0.0"]
