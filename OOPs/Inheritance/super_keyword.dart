class Employee {

    void login() {
        print("Employee Logged In");
    }

}
class Manager extends Employee {

    @override
    void login() {

        super.login();

        print("Manager Dashboard Opened");
    }

}
void main() {

    Manager manager = Manager();

    manager.login();

}