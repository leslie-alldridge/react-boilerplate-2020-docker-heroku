FROM node:13

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=dev && npm install && npm run build

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]