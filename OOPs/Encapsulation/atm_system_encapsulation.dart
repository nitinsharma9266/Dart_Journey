import 'dart:io';

class ATM{
    String _accountHolderName = "";
    String _pin = "";
    double _balance = 0;

    String get accountHolderName=> _accountHolderName;
    String get pin=>_pin;
    double get balance=>_balance;

    set accountHolderName(String name) {
        if (name.trim().isNotEmpty) {
            _accountHolderName = name;
            print("✅ Account Holder Name Saved.");
        } else {
            print("❌ Account Holder Name cannot be empty.");
        }
    }
    set pin(String value) {

        // Length Check
        if (value.length != 4) {
            print("❌ PIN must be exactly 4 digits.");
            return;
        }

        bool isValid = true;

        // Check every character
        for (int i = 0; i < value.length; i++) {
            String ch = value[i];

            if (ch.compareTo('0') >= 0 &&
                ch.compareTo('9') <= 0) {
            // Valid digit
            } else {
            isValid = false;
            break;
            }
        }

        // Save PIN only if valid
        if (isValid) {
            _pin = value;
            print("✅ PIN Saved Successfully.");
        } else {
            print("❌ PIN must contain only digits.");
        }
    }
        
    
    set balance(double value) {
        if (value > 0) {
            _balance = value;
        } else {
            print("Balance must be greater than 0");
        }
    }

    void deposit(double amount){
        if(amount>0){
            _balance=_balance+amount;
            print("✅ Amount Deposited Successfully.");
            print("Current Balance : ₹$_balance");
        }
        else{
            print("Amount must be positive..");
        }
    }

    void withdraw(double amount){
        if(amount<=0){
            print("Invalid amount");
        }
        else if(amount>_balance){
            print("Insuficient Balance in the account .");
        }
        else{
            _balance=_balance-amount;
            print("✅ Amount withdrawn Successfully.");
            print("Current Balance : ₹$_balance");
        }
    }
    void showBalance() {
        print("\n========== ACCOUNT DETAILS ==========");
        print("Account Holder : $_accountHolderName");
        print("Current Balance : ₹$_balance");
        print("=====================================");
    }
    
}
void main(){
    ATM atm = ATM();

    void createAccount(){
        while (atm.accountHolderName.isEmpty){
        stdout.write("Enter Account Holder Name : ");
        String name = stdin.readLineSync()!;;

        atm.accountHolderName=name;
        }
        while(atm.pin.isEmpty){
            stdout.write("Enter 4 digit Pin : ");
            String value=stdin.readLineSync()!;

            atm.pin=value;
        }
        while (atm.balance == 0){
            stdout.write("Enter  Initial Balance : ");
            late double value=double.parse(stdin.readLineSync()!);

            atm.balance=value;
        }
        print("Account Created successfully..");
    }
    createAccount();

    while (true) {
        print("\n========== ATM MENU ==========");
        print("1. Check Balance");
        print("2. Deposit");
        print("3. Withdraw");
        print("4. Exit");

        stdout.write("Enter Your Choice: ");
        int choice = int.parse(stdin.readLineSync()!);

        switch (choice) {
            case 1:
            atm.showBalance();
            break;

            case 2:
            stdout.write("Enter Deposit Amount: ");
            double depositAmount =double.parse(stdin.readLineSync()!);

            atm.deposit(depositAmount);
            break;

            case 3:
            stdout.write("Enter Withdraw Amount: ");
            double withdrawAmount =double.parse(stdin.readLineSync()!);

            atm.withdraw(withdrawAmount);
            break;

            case 4:
            print("\n🙏 Thank You for Using Our ATM.");
            return;

            default:
            print("❌ Invalid Choice! Please Try Again.");
        }
    }
    
    
}