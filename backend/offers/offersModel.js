const db = require("../data/dbConfig");
const { commonOfferFields } = require("./offersHelper");

function findById(id) {
  return db("offers")
    .where("offers.id", "=", id)
    .join("users", "maker_id", "=", "users.id")
    .select(commonOfferFields, "users.username");
}

async function checkOfferExistence(offerId) {
  return await db("offers")
    .where({ id: offerId })
    .select(commonOfferFields, "users.username");
}

/**
 * Saves an offer in the database
 *
 * @param offer {Offer}
 * @return {Promise<?>}
 */
async function saveOffer(offer) {
  const [savedOfferId] = await db("offers").insert(offer.toRow(), ["id"]);

  return savedOfferId;
}

async function fetchMyOffers({ id }) {
  return db("offers").where("maker_id", id);
}

async function fetchAllOffers() {
  return db("offers")
    .join("users", "maker_id", "=", "users.id")
    .select( commonOfferFields,"users.username")
    .orderBy("updated_at", "desc");
}

async function updateOffer(updateOffer, offerId) {
  const [updatedOfferId] = await db("offers")
    .where({ id: offerId })
    .update(updateOffer.toRow(), ["id"]);
  return findById(updatedOfferId);
}

async function deleteOfferById(offerId) {
  return db("offers").where({ id: offerId }).del();
}

module.exports = {
  saveOffer,
  findById,
  fetchMyOffers,
  fetchAllOffers,
  updateOffer,
  deleteOfferById,
  checkOfferExistence
};
