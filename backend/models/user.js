class User {
    constructor(username, password, email) {
        this.username = username;
        this.password = password;
        this.email = email;
    }

    toRow() {
        return {
            username: this.username ?? null,
            password: this.password ?? null,
            email: this.email ?? null,
        }
    }

    static fromRow({ username, password, email,
    }) {
        return new User(
            username, password, email,
        );
    }

    static fromJSON({ username, password, email
    }) {
        return new User(username, password, email);
    }

}

module.exports = User