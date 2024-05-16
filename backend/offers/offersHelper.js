const { check, validationResult } = require("express-validator");
const Offer = require("../models/offer")

const validateOfferBody = [
  check("city")
    .matches(/^[a-z\-_\s']+$/i)
    .not()
    .isEmpty()
    .withMessage("City field cannot be empty")
    .trim(),

  check("country")
    .matches(/^[a-z\-_\s']+$/i)
    .not()
    .isEmpty()
    .withMessage("Country field cannot  be empty")
    .trim(),

  check("paymentMethod")
    .matches(/^[a-z\-_\s']+$/i)
    .not()
    .isEmpty()
    .withMessage("Payment method field cannot  be empty")
    .trim(),

  (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      const errorMessage = {};
      errors.array().forEach((error) => {
        errorMessage[error.param] = error.msg;
      });
      return res.status(400).json({
        status: 400,
        errorMessage,
      });
    }
    return next();
  },
];

const commonOfferFields = [
  "id", "buy_dash", "country", "city", "payment_method",
  "currency_type", "currency_symbol", "dynamic_pricing", "margin",
  "margin_above", "market_exchange", "limit_min", "limit_max", "headline",
  "trade_terms", "open_hours", "close_hours", "trusted_only", "pause",
  "maker_id", "created_at", "updated_at"
];

module.exports = {
  validateOfferBody,
  offerModel: Offer,
  commonOfferFields
};
