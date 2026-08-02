class Payment {
    void pay() {
        print("Processing Payment...");
    }
}

class UPI extends Payment {
    @override
    void pay() {
        print("💳 Payment via UPI");
    }
}

class CreditCard extends Payment {
    @override
    void pay() {
        print("💳 Payment via Credit Card");
    }
}

class Cash extends Payment {
    @override
    void pay() {
        print("💵 Payment via Cash");
    }
}

void main() {

    Payment payment;

    payment = UPI();
    payment.pay();

    payment = CreditCard();
    payment.pay();

    payment = Cash();
    payment.pay();
}