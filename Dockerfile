# Use an official Node runtime as a parent image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock files
COPY package*.json yarn.lock ./

# Install app dependencies
RUN yarn install

# Bundle app source inside the Docker image
COPY . .

# Set environment variables
ARG NAME=Jack
ARG ENVIRONMENT=development
ENV NAME $NAME
ENV ENVIRONMENT $ENVIRONMENT

# Expose port 3002 to the outside world
EXPOSE 3002

# Define the command to run the app
CMD ["yarn", "start"]

