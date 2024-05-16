module.exports = class AlreadyExist extends Error {
    constructor(message) {
        super(message);
        this.code = 409;
      }
}
