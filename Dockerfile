FROM node:13

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g serve

RUN npm install

COPY . .
RUN npm run build
CMD serve -p $PORT -s build
