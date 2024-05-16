const chatModel = require("./chatModel.js");
const io = require("../socket.js");
const NotFoundError = require("../errors/not.found.error");
const BadRequest = require("../errors/bad.request.error.js");

module.exports.getAllMessages = async (req, res) => {

    const { order_id } = req.params;

    const allMyOrders = await chatModel.findAllByOrderId(order_id);

    if (allMyOrders.length === 0) {
      throw new NotFoundError("No orders found for the given order_id!");
    }

    return res.status(200).json(allMyOrders);
};

module.exports.createChat = async (req, res) => {

    const message = chatModel.message.fromJSON(req.body)

    const savedMessage = await chatModel.saveMessage(message);

    if (savedMessage.length === 0) {
      throw new BadRequest("Something went wrong with your trade request.")
    }

    io.getIO().to(req.body.order_id).emit("newMessage", {
      action: "create",
      message: savedMessage,
    });

    return res.status(201).json({msg:"Successfully created new message"});
};
