FROM node:14

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN npm install

# build the static files
RUN npm run build

# install server
RUN npm install -g serve

# serve the app
CMD ["serve", "-s", "-l", "5000", "build"]
