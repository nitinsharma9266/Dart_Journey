class BankAccount {

    late String accountHolderName;
    late String accountNumber;
    late double balance;
    late String accountType;

    
    BankAccount(){
        print("------------------------------------------");
        accountType = "Normal";
        balance = 500;
        
    }
   
    BankAccount.savings(){
        accountType="Savings";
        balance=1000;
        
    }
    
    BankAccount.current(){
        accountType="current";
        balance=10000;
        
    }
    
    BankAccount.student(){
        accountType="Students";
        balance=0;
        
    }
    void showAccountDetails() {
        
        print("==============================");
        print("Account Type : $accountType");
        print("Balance      : $balance");
        print("");
        
    }
   
    
    
}
void main(){
    BankAccount b1 = BankAccount();
    b1.showAccountDetails();
    BankAccount b2 = BankAccount.savings();
    b2.showAccountDetails();
    BankAccount b3 = BankAccount.current();
    b3.showAccountDetails();
    BankAccount b4 = BankAccount.student();

    b4.showAccountDetails();
}