FROM node:18.4.0-alpine

EXPOSE 3000

USER node

WORKDIR /home/node/app

COPY ./frontend .

USER root

RUN npm install

CMD ["npm", "start"]