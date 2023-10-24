FROM node:16 as build

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json from the Angular app directory to the container
COPY package.json

# Install dependencies
RUN npm install

# Copy the entire Angular app source code from the Angular app directory to the container
FROM nginx:alpine

# Build the Angular app
WORKDIR /usr/share/nginx/html
RUN rm-rt./*

# Use NGINX as the base image for the final stage


# Copy the built Angular app from the build stage to the nginx web server's directory
COPY --from=builder /app/dist/celestradepro".
ENTRYPOINT ["nginx","-g","daemon off;"]

