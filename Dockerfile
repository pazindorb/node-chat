FROM node:14

RUN apt-get upgrade
RUN apt-get update

RUN apt-get install python make g++ git

COPY . node-chat/

WORKDIR node-chat

EXPOSE 3000
ENTRYPOINT npm start
