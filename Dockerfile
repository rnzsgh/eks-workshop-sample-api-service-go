# This is a multi-stage build. First we are going to compile and then
# create a small image for runtime.
#Backend
FROM node:16.14.2 
#running on port 5000
ENV PORT 5000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN useradd -u 10001 app
# Install app dependencies
COPY package*.json ./

RUN npm install

COPY . .
USER app

EXPOSE 5000
CMD  ["npm", "run", "dev"]
