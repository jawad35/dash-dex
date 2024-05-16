const db = require("../data/dbConfig");
const Chat = require("../models/chat");

async function saveMessage(message) {
  return db("chat").insert(message, ["text", "message_id", "order_id"]);
}

async function findAllByOrderId(id) {
  return db("chat")
    .join("users", "author_id", "=", "users.id")
    .select("id", "order_id", "text", "author_id", "created_at", "updated_at", "users.username")
    .where("order_id", id)
    .orderBy("created_at");
}

module.exports = {
  findAllByOrderId,
  saveMessage,
  message:Chat
};
