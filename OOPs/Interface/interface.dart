class Employee{
    void login(){}

    void logout(){}
}
class Developer implements Employee{
    @override

    void login(){
        print("Developer Logged In");

    }
    @override
    void logout(){
        print("Developer Logged Out.");
    }
}
void main(){
    Developer developer = Developer();

    developer.login();

    developer.logout();
}