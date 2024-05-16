const db = require("../data/dbConfig");
const Order = require("../models/offer");
const { commonOrdersFields } = require("./ordersHelper");

async function findById(id) {
  const order = await db("orders").where({ id }).first();

  return Order.fromRow(order)
}

async function saveOrder(newOrder, transaction) {
  const [savedOrderId] = await db("orders")
      .insert(newOrder)
      .transaction(transaction)
      .returning("id");

  return findById(savedOrderId, transaction);
}

function findMyOrders(id) {
  return db("orders")
    .select(
      commonOrdersFields,
      { usermaker: "u1.username" },
      { usertaker: "u2.username" }
    )
    .leftJoin({ u1: "users" }, "orders.maker_id", "=", "u1.id")
    .leftJoin({ u2: "users" }, "orders.taker_id", "=", "u2.id")
    .where(function () {
      this.where("orders.taker_id", id).orWhere("orders.maker_id", id);
    });
}

function findOrderIdUserId(userId, orderId) {
  return db("orders")
    .select(
      commonOrdersFields,
      { usermaker: "u1.username" },
      { usertaker: "u2.username" }
    )
    .leftJoin({ u1: "users" }, "orders.maker_id", "=", "u1.id")
    .leftJoin({ u2: "users" }, "orders.taker_id", "=", "u2.id")
    .where(function () {
      this.where("orders.id", orderId);
    })
    .andWhere(function () {
      this.where("orders.taker_id", userId).orWhere("orders.maker_id", userId);
    });
}

async function updateOrderById(order) {
  const [updatedOrder] = await db("orders")
      .where({id: order.id})
      .update(order.toRow(), ['buy_dash', 'city', 'country', 'payment_method', 'currency_type', 'currency_symbol',
        'dynamic_pricing', 'margin', 'margin_above', 'market_exchange', 'limit_min', 'limit_max',
        'headline', 'trade_terms', 'open_hours', 'close_hours', 'trusted_only', 'maker_id', 'pause']);

  return findById(updatedOrder.id);
}

module.exports = {
  findById,
  saveOrder,
  findMyOrders,
  findOrderIdUserId,
  updateOrderById,
};
