# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the rest of your application's code into the container
COPY . .

# Make port 5000 available to the world outside this container
EXPOSE 5000

# You can set environment variables that your app uses. For example:
# ENV NODE_ENV=production

# Define the command or script used to start your service
CMD ["node", "app.js"]
