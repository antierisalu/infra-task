#!/bin/sh

# Start RabbitMQ server in the background
/usr/local/sbin/rabbitmq-server &

if [ "$1" = "start" ]; then
  # Start your Node.js server if "start" is passed
  exec node server.js
else
  # Otherwise, execute the command provided in CMD (if any)
  exec "$@"
fi