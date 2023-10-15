# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /frontend

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application code to the container
COPY . .

# Build the Next.js application for production
RUN npm run build

# Expose the port on which your Next.js app runs (default is 3000)
EXPOSE 3000

# Start the Next.js application when the container starts
CMD [ "npm", "start" ]
