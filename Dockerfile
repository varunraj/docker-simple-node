# Specify the base image

FROM node:alpine

# Copy local files to container. Path is relative to build context

COPY ./ ./

# Install dependencies

RUN npm install

# Start command

CMD [ "npm", "start" ]


# Running in AWS Workspace created issues to download alpine
# Use docker "build -t varurajdocker/docker-simple-node . --network=host" instead of "docker build ." 