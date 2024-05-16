const bcrypt = require("bcryptjs");
const User = require("./usersModels");
const { userModel } = require("./usersHelper");
const BadRequest = require("../errors/bad.request.error");
const AlreadyExist = require("../errors/already.exist.error");
const ForbiddenRequest = require("../errors/forbidden.error");
const ServerError = require("../errors/server.error");

module.exports.signup = async (req, res) => {
  
  const { email, username, password } = userModel.fromJSON(req.body);

  const existingUser = await User.findExistingUser(username,email);

  if (existingUser.length !== 0) {
    throw new AlreadyExist("User with provided email or username already exists!")
  }

  const hashedPassword = await bcrypt.hash(password, 12);

  const newUser = await User.createUser({
    email,
    username,
    password: hashedPassword
  });

  res.status(201).json({
    message: "User created",
    sessionID: req.sessionID,
    user: newUser,
  });

};

module.exports.login = async (req, res) => {

  const { username, password } = userModel.fromJSON(req.body);

  if (!username || !password) {
    throw new BadRequest('Oops, username and password is required for login.')
  }

  const user = await User.findBy({ username });

  if (user && bcrypt.compare(password, user.password)) {

    if (user.isBlocked) {
     throw new ForbiddenRequest("Your Account has been suspended")
    } else {
      req.session.user = user
      return res.status(200).json({
        sessionID: req.sessionID,
        userId: user.id,
        username: user.username,
      });
    }
  }

  throw new ServerError("Something went wrong")
};

// just for auth user testing It will be removed 
module.exports.checkUser = async (req, res) => {
  return res.status(200).json({
    message: 'success'
  })

}