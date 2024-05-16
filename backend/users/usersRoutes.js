const express = require("express");
const usersControllers = require("./usersControllers");
const { validateUser} = require("./usersHelper");
const checkLoggedIn = require("../middlewares/restrictedMiddleware");
const runAsyncWrapper = require("../middlewares/runAsyncWrapper");

const router = express.Router();

router.post("/register", validateUser, runAsyncWrapper(usersControllers.signup));
router.post("/login", runAsyncWrapper(usersControllers.login));
// this route just for auth user testing It will be removed 
router.get("/user", checkLoggedIn, runAsyncWrapper(usersControllers.checkUser));


module.exports = router;
