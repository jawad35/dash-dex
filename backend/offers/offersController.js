const offersModel = require("./offersModel.js");
const io = require("../socket.js");
const { offerModel } = require("./offersHelper.js");
const NotFoundError = require("../errors/not.found.error.js");
const InvalidInput = require("../errors/invalid.input.js");

module.exports.getOffersByMakerId = async (req, res) => {

  const maker_id = req.params;

  const myOffers = await offersModel.fetchMyOffers(maker_id);

  return res.status(200).json(myOffers);
};

module.exports.getAllOffers = async (req, res) => {

    const allOffers = await offersModel.fetchAllOffers();

    return res.status(200).json(allOffers);
};

module.exports.getOffer = async (req, res) => {
    const { id } = req.params;

    if (!id) {
      throw new InvalidInput('Please provide a valid id')
    }

    const myOffer = await offersModel.findById(id);
    return res.status(200).json(myOffer);
};

module.exports.createOffer = async (req, res) => {
    const newOffer = offerModel.fromJSON(req.body)

    const newOfferId = await offersModel.saveOffer(newOffer);

    io.getIO().emit("offers", { action: "create", offer: newOfferId });

    return res.status(201).json(newOfferId);
};

module.exports.updateOffer = async (req, res) => {

    const { offerId } = req.params;

    const updatedOffer = offerModel.fromJSON(req.body)

    const isOfferExist = offersModel.checkOfferExistence(offerId);

    if (!isOfferExist) {
      throw new NotFoundError("Offer or User not found!")
    }

    const updateComplete = await offersModel.updateOffer(
      updatedOffer,
      offerId
    );

    if (!updateComplete) {
      throw new NotFoundError("Not Found!")
    }

    io.getIO().emit("offers", { action: "update", offer: updateComplete });
    //console.log("getIO", io.getIO());

    return res.status(200).json(updateComplete);
};

module.exports.deleteOffer = async (req, res) => {

    const { offerId } = req.params;

    const isOfferExist = offersModel.checkOfferExistence(offerId);

    if (!isOfferExist) {
      throw new NotFoundError("Offer or User not found!")
    }

    const result = await offersModel.deleteOfferById(offerId);

    io.getIO().emit("offers", { action: "delete", id: result });

    return res.status(200).json(result);
};
