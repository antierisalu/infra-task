FROM alpine:3.18

ENV RABBITMQ_VERSION=3.12.2 \
    HOME=/var/lib/rabbitmq \
    RABBITMQ_CONFIG_FILE=/etc/rabbitmq/rabbitmq.conf

RUN apk add --no-cache \
    erlang \
    su-exec \
    logrotate \
    bash \
    curl \
    gnupg \
    openssl \
    ncurses \
    procps \
    nodejs \
    npm

RUN addgroup -S rabbitmq && adduser -S rabbitmq -G rabbitmq

RUN curl -L https://github.com/rabbitmq/rabbitmq-server/releases/download/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz \
    | tar -xJ -C /usr/local --strip-components=1 \
    && mkdir -p /var/lib/rabbitmq /etc/rabbitmq \
    && chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq \
    && chmod +x /usr/local/sbin/rabbitmq-server

RUN echo "loopback_users = none" > /etc/rabbitmq/rabbitmq.conf

WORKDIR /app

COPY package*.json ./
    
RUN npm install
    
COPY . .

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE ${RABBITMQ_PORT} ${BILLING_PORT}

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["start"]
