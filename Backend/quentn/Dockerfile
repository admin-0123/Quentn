# base image
FROM node:16-alpine

# Make folder to put our files in
RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/backend

# Set working directory so that all subsequent commands runs in this folder
WORKDIR /usr/src/app/backend

# COPY package*.json ./
# Copy our app
COPY . .
# Copy package.json and install dependencies
RUN yarn install


# Expose port to access server
EXPOSE 8080

# Command to run our app
CMD ["yarn", "develop"]
