const errorHandler = require("../middlewares/errorHandler");

module.exports = (callback) => {
    return (req, res, next) => {
        callback(req, res, next)
            .catch((e) => errorHandler({e, res, next}))
    }
}
