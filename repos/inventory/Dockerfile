# Use the penultimate stable version of Alpine as the base image
FROM alpine:3.21

RUN apk add --no-cache nodejs npm

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE ${INVENTORY_PORT}

CMD ["node", "server.js"]
