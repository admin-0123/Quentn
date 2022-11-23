# base image
FROM node:16-alpine

# Make folder to put our files in
RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/frontend

# Set working directories so that all aubsequents run in this folder
WORKDIR /usr/src/app/frontend

# Copy our app
COPY . .
# Copy package.json and install dependencies
RUN yarn install

# Expose port to access server
EXPOSE 3000

# Command to run our app
CMD ["yarn", "dev"]

