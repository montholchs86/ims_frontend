# Use an official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY ./src ./src

# Expose the port on which the app runs (default: 3000)
EXPOSE 3000

# Command to run the app in development mode
CMD ["npm", "run", "dev"]
