module.exports = class ForbiddenRequest extends Error {
    constructor(message) {
        super(message);
        this.code = 403;
      }
}
