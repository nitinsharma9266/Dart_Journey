class User {
    String name = "";
    String email = "";

    void login() {
    print("$name Logged In");
    }

    void logout() {
    print("$name Logged Out");
    }
}
class Admin extends User {

    void banUser() {
    print("$name banned a user.");
    }

}
class Creator extends User {

    void uploadReel() {
    print("$name uploaded a reel.");
    }

}
class NormalUser extends User {

    void likePost() {
    print("$name liked a post.");
    }

}
void main(){
    Admin admin = Admin();

    admin.name = "Nitin Sharma";
    admin.email = "nitin@gmail.com";

    admin.login();
    admin.banUser();
    admin.logout();
}