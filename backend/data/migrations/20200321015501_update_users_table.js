module.exports.up = function(knex) {
  return knex.schema.table("users", users => {
    users.string("blurb", 255);
    users.boolean("merchant").defaultTo(false);
  });
};

module.exports.down = function(knex) {
  return knex.schema.table("users", users => {
    users.dropColumn("merchant");
    users.dropColumn("blurb");
  });
};
