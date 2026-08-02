class Payment{
    void pay(){
        print("Processing Payment...");
    }
}
class UPI extends Payment{
    @override
    void pay(){
        print("Paying via UPI...");
    }
}
class CreditCard extends Payment{
    @override
    void pay(){
        print("Paying via Credit Card...");
    }
}
class Cash extends Payment{
    @override
    void pay(){
        print("Paying by Cash...");
    }
}
void main(){
    UPI upi=UPI();
    CreditCard crdt=CreditCard();
    Cash c=Cash();

    upi.pay();
    crdt.pay();
    c.pay();
}