FROM node:11-alpine
RUN mkdir -p /src/app
WORKDIR /src/app
COPY . /src/app
RUN npm install
EXPOSE 3000
CMD [ "node", "proxy/server.js" ]