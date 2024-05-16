const offersController = require("./offersController");
const offersValidator = require("./offersHelper");
const checkLoggedIn = require("../middlewares/restrictedMiddleware");
const express = require("express");
const runAsyncWrapper = require("../middlewares/runAsyncWrapper");

const router = express.Router();

router.post(
  "/",
  checkLoggedIn,
  offersValidator.validateOfferBody,
  offersController.createOffer
);

router.get("/offers", runAsyncWrapper(offersController.getAllOffers));
router.get("/user/:id/offers", checkLoggedIn, runAsyncWrapper(offersController.getOffersByMakerId));
router.get("/offer/:id([0-9]+)", runAsyncWrapper(offersController.getOffer));

router.put(
  "/:userId([0-9]+)/:offerId([0-9]+)",
  checkLoggedIn,
  runAsyncWrapper(offersController.updateOffer)
);

router.delete(
  "/:userId([0-9]+)/:offerId([0-9]+)",
  checkLoggedIn,
  runAsyncWrapper(offersController.deleteOffer)
);

module.exports = router;
