# Use the official Node.js runtime as the base image
FROM node:14

# Set the working directory within the container
WORKDIR /app

# Copy package.json and package-lock.json from the 01 folder to the working directory
COPY 01/package*.json ./

# Install application dependencies
RUN npm install

# Copy application source code from the current directory to the working directory
COPY . .

# Expose the port that the app runs on (inside the container)
EXPOSE 3000

# Define the command to start the application
CMD ["node", "app.js"]
