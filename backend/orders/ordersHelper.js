const Order = require("../models/order");

const commonOrdersFields = [
  "id",
  "complete",
  "cancelled",
  "is_maker_buying",
  "maker_id",
  "taker_id",
  "offer_id",
  "price_dash",
  "dash_amount",
  "fiat_amount",
  "created_at",
  "updated_at"
]
module.exports = {
  orderModel:Order,
  commonOrdersFields
};
