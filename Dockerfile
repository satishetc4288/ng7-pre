FROM node:10.15.0
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
COPY dist dist
COPY server.js .

EXPOSE 8080
CMD [ "npm", "start" ]
