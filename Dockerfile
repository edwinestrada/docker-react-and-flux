# Use an official Node as a base image
FROM node:0.12.16-slim

WORKDIR /app
ADD . /app

RUN npm install
CMD ["./node_modules/gulp/bin/gulp.js"]

# docker run --name my-node-container -v $(pwd)/src:/app/src -p 80:9005 -p 35729:35729 node-image