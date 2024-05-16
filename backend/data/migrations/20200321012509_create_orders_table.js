module.exports.up = function (knex) {
  return knex.schema.createTable("orders", (orders) => {
    orders.increments();
    orders.boolean("is_complete").notNullable().defaultTo(false);
    orders.enu("status", ["created", "completed", "cancelled"]).defaultTo("created");
    orders.boolean("is_maker_buying").notNullable();
    orders
      .integer("maker_id")
      .unsigned()
      .references("id")
      .inTable("users")
      .onUpdate("CASCADE")
      .onDelete("CASCADE");
    orders
      .integer("taker_id")
      .unsigned()
      .references("id")
      .inTable("users")
      .onUpdate("CASCADE")
      .onDelete("CASCADE");
    orders
      .integer("offer_id")
      .unsigned()
      .references("id")
      .inTable("offers")
      .onUpdate("CASCADE")
      .onDelete("CASCADE");
    orders.string("price_dash").notNullable();
    orders.string("dash_amount").notNullable();
    orders.string("fiat_amount").notNullable();
    orders.timestamps(true, true);
  });
};

module.exports.down = function (knex) {
  return knex.schema.dropTableIfExists("orders");
};
