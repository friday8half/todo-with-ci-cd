FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN node -v
RUN npm -v

RUN mkdir server
RUN ln -s /usr/bin/nodejs /usr/local/bin/node
WORKDIR /server
CMD npm install ; npm run start:dev