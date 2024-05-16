module.exports.up = function(knex) {
  return knex.schema.createTable("users", users => {
    users.increments();
    users
      .string("username", 255)
      .notNullable()
      .unique();
    users.string("password", 255).notNullable();
    users
      .string("email", 255)
      .notNullable()
      .unique();
    users.boolean("is_push_notification").defaultTo(false);
    users.boolean("is_isBlocked").defaultTo(false);
    users.timestamps(true, true);
  });
};

module.exports.down = function(knex) {
  return knex.schema.dropTableIfExists("users");
};
