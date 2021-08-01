FROM node:alpine

WORKDIR /usr/app

# copy everything from this directory in the computer to the container
COPY ./ ./

RUN npm install

CMD ["npm", "start"]

# docker build -t ericamcar/simpleweb .
# docker run -p 8080:8080 ericamcar/simpleweb