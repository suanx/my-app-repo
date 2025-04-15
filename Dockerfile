# Use the official Node.js image as the base image
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000 to access the app
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
