FROM node:alpine

# any commands will be executed relative to this folder in this container
WORKDIR /usr/app

# copy everything from this directory in the computer to the container
COPY ./package.json ./
RUN npm install

COPY ./ ./

CMD ["npm", "start"]

# docker build -t ericamcar/simpleweb .
# docker run -p 8080:8080 ericamcar/simpleweb
# docker exec -it d71bdc0c2ec0 sh