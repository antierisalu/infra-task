# Use the penultimate stable version of Alpine as the base image
FROM alpine:3.21

ARG CI_PIPELINE_IID
ENV APP_VERSION=${CI_PIPELINE_IID}

RUN apk add --no-cache nodejs npm

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE ${GATEWAY_PORT}

CMD ["npm", "start"]