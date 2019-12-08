FROM node:10

MAINTAINER Alexander Timofeev <al.timofeev.m@yandex.ru>

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN export AZURE_SUBSCRIPTION_ID="ad6fe0fd-4790-4699-9dc6-1d1f193f680b"
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

EXPOSE 8080
CMD [ "node", "app.js" ]