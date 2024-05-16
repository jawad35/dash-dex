const express = require("express");
const chatController = require("./chatController");
const checkLoggedIn = require("../middlewares/restrictedMiddleware");
const runAsyncWrapper = require("../middlewares/runAsyncWrapper");

const router = express.Router();

router.get("/order/:id/chat", checkLoggedIn, runAsyncWrapper(chatController.getAllMessages));
router.post("/order/:id/chat", checkLoggedIn, runAsyncWrapper(chatController.createChat));

module.exports = router;
