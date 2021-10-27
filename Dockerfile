FROM node

WORKDIR /app

COPY ./src/package.json /app

RUN ls -la

RUN npm install

COPY ./src /app
