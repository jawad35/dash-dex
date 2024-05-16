const ForbiddenRequest = require("../errors/forbidden.error");
const NotFoundError = require("../errors/not.found.error");
const ServerError = require("../errors/server.error");
const { findByUsername } = require("../users/usersModels");


module.exports = (req, res, next) => {

  try {

    if (!req.session.user) {
      throw new NotFoundError("User not found")
    }

    findByUsername(req.session.user.username).then(users => {

      if (users.length > 0) {

        if (users[0]?.isBlocked) {
          throw new ForbiddenRequest("Your Account has been suspended")
        } else {
          return next();
        }
      } else {
        throw new NotFoundError("User not found")
      }
    })
  } catch (err) {
    throw new ServerError("Could not find user")
  }
};
