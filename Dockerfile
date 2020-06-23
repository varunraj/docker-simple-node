# Specify the base image

FROM node:alpine

WORKDIR /usr/app

# Copy package.json and install dependencies

COPY ./package.json ./
RUN npm install


#Copy everything else. This approach will not copy everything if dependencies dont change.

COPY ./ ./

# Start command

CMD [ "npm", "start" ]


# Running in AWS Workspace created issues to download alpine
# Use docker "build -t varurajdocker/docker-simple-node . --network=host" instead of "docker build ." 