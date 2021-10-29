FROM node

WORKDIR /app

COPY ./src/package.json /app

RUN npm install

COPY ./src /app

EXPOSE 3000

CMD ["npm", "run", "dev"]

# : docker build -t nodeapp:001 .
# docker container run -p 5002:5000 --name customized -e "name=aagam" -d nodeapp:001
