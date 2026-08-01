class User {
    String name = "";
    String email = "";

    void login() {
    print("User Logged In");
    }
}
class Admin extends User {

}
void main(){
    Admin admin = Admin();

    admin.name = "Nitin Sharma";

    admin.email = "nitin@gmail.com";

    admin.login();
}