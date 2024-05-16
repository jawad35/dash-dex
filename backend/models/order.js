class Order {
    constructor(dashAmount, fiatAmount, isMakerBuying, makerId, offerId,
        priceDASH, takerId, cancelled, complete, id) {
        this.dashAmount = dashAmount;
        this.fiatAmount = fiatAmount;
        this.isMakerBuying = isMakerBuying;
        this.makerId = makerId;
        this.offerId = offerId;
        this.priceDASH = priceDASH;
        this.takerId = takerId;
        this.cancelled = cancelled;
        this.complete = complete;
        this.id = id;

    }

    toRow() {
        return {
            dash_amount: this.dashAmount ?? null,
            fiat_amount: this.fiatAmount ?? null,
            is_maker_buying: this.isMakerBuying ?? null,
            maker_id: this.makerId ?? null,
            offer_id: this.offerId ?? null,
            price_dash: this.priceDASH ?? null,
            taker_id: this.dynamicPricing ?? null,
            cancelled: this.cancelled ?? null,
            complete: this.complete ?? null,
            id: this.id ?? null,
        }
    }

    static fromRow({ dash_amount, fiat_amount, is_maker_buying, maker_id, offer_id,
        price_dash, taker_id, cancelled, complete, id
    }) {
        return new Order(
            dash_amount, fiat_amount, is_maker_buying, maker_id, offer_id,
            price_dash, taker_id, cancelled, complete, id
        );
    }

    static fromJSON({ dashAmount, fiatAmount, isMakerBuying, makerId, offerId,
        priceDASH, takerId, cancelled, complete, id
    }) {
        return new Order(dashAmount, fiatAmount, isMakerBuying, makerId, offerId,
            priceDASH, takerId, cancelled, complete, id);
    }

}

module.exports = Order
