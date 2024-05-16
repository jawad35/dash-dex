const AlreadyExist = require("../errors/already.exist.error");
const BadRequest = require("../errors/bad.request.error");
const ForbiddenRequest = require("../errors/forbidden.error");
const InvalidInput = require("../errors/invalid.input");
const NotFoundError = require("../errors/not.found.error");
const ServerError = require("../errors/server.error");

module.exports = ({e, res, next}) => {

    if (e instanceof NotFoundError) {
        return res.status(e.code).send(e.message)
    }

    if (e instanceof ServerError) {
        return res.status(e.code).send(e.message)
    }

    if (e instanceof BadRequest) {
        return res.status(e.code).send(e.message)
    }

    if (e instanceof AlreadyExist) {
        return res.status(e.code).send(e.message)
    }

    if (e instanceof InvalidInput) {
        return res.status(e.code).send(e.message)
    }

    if (e instanceof ForbiddenRequest) {
        return res.status(e.code).send(e.message)
    }

    return next()
}
