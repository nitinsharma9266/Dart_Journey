class BankAccount{
    double _balance=0;

    double get balance=>_balance;

    set balance(double amount){
        if(amount>=0){
            _balance=amount;
        }
        else{
            print("Invalid Balance ");
        }
    }

}

void main(){
    BankAccount account=BankAccount();

    account.balance=500000;

    print(account.balance);

    account.balance=-20000;

    print(account.balance);
}