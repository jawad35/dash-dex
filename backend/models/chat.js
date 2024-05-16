class Chat {
    constructor(text, author_id, order_id) {
        this.text = text;
        this.author_id = author_id;
        this.order_id = order_id;
    }

    toRow() {
        return {
            dash_amount: this.text ?? null,
            fiat_amount: this.author_id ?? null,
            is_maker_buying: this.order_id ?? null,
        }
    }

    static fromRow({ dash_amount, fiat_amount, is_maker_buying,
    }) {
        return new Chat(
            dash_amount, fiat_amount, is_maker_buying,
        );
    }

    static fromJSON({ text, author_id,
    }) {
        return new Chat(text, author_id,);
    }

}

module.exports = Chat