FROM node:latest

RUN mkdir -p /home/app

COPY ./app /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install
RUN npm install

EXPOSE 3000

CMD [ "node", "app.js" ]
