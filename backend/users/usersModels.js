const db = require("../data/dbConfig");

const findBy = filter => {
  return db("users")
    .where(filter)
    .first();
};

const findById = id => {
  return db("users")
    .where({ id })
    .select(
      "id",
      "username",
      "email",
      "push_notification"
    )
    .first();
};

const findByUsername = username => {
  return db("users")
    .where({ username })
};

const findExistingUser = (username, email) => {
  return db("users")
  .where(builder => {
    builder.where("username", username)
           .orWhere("email", email);
  });
};

const createUser = async user => {
  return db("users").insert(user, ["id", "email", "username"]);
};

const updateUser = async (id, user) => {
  return db("users")
    .where({ id })
    .update(user, [
      "id",
      "username",
      "email",
      "push_notification",
      "email_notification"
    ]);
};

module.exports = {
  findBy,
  createUser,
  findById,
  updateUser,
  findByUsername,
  findExistingUser
};
