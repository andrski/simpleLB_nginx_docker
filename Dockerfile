FROM node

WORKDIR /app

COPY ./src/package.json /app

RUN npm install

COPY ./src /app

# VOLUME [ "./src/:/app" ]

EXPOSE 3000

CMD ["npm", "run", "dev"]

# : docker build -t nodeapp:01 .
# docker container run -p 5001:5000 --name app1 -e "NAME=aagam" -d nodeapp:01
