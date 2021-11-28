FROM ubuntu:18.04
WORKDIR /usr/src/app
COPY ./app/ /usr/src/app/
RUN apt-get update 
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install
RUN npm run build
EXPOSE 5000
ENV PORT=5000
CMD npm run start-prod