import express from "express";
import { connect } from "amqplib";

const app = express();
const port = process.env.BILLING_PORT;

if (!port) {
  console.error("BILLING_PORT is not set.");
  process.exit(1);
}

const rabbitHost = process.env.RABBITMQ_HOST;

app.use(express.json());

app.post("/", async (req, res) => {
  const order = req.body;
  console.log("Received order:", order);

  try {
    console.log(`Connecting to RabbitMQ at amqp://${rabbitHost}`);
    const conn = await connect(`amqp://${rabbitHost}`);
    const channel = await conn.createChannel();
    const queue = "orders_queue";

    await channel.assertQueue(queue, { durable: true });
    channel.sendToQueue(queue, Buffer.from(JSON.stringify(order)), {
      persistent: true,
    });

    console.log("Sent to RabbitMQ:", order);
    res.status(200).send("Order received and sent to queue.");
  } catch (error) {
    console.error("Error sending to RabbitMQ:", error);
    res.status(500).send("Error sending order to queue.");
  }
});

app.listen(port, () => {
  console.log(`Billing is running on ${process.env.GATEWAY_URL}/billing`);
});