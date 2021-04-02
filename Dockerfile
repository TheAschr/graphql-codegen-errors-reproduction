FROM node:14.8-alpine

WORKDIR /usr/app

COPY package*.json ./
COPY yarn.lock ./

run yarn config set strict-ssl false

RUN yarn

EXPOSE 80

COPY codegen.yml ./
COPY tsconfig.json ./
COPY nodemon.json ./
COPY .eslintrc ./

CMD [ "yarn", "start" ]