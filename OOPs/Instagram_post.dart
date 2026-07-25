class Post {
    late String username;
    late String caption;
    late int likes;
    late int comments;
    late bool isLiked;

    void showPost() {
        print("\n=========== Instagram Post ==========\n");
        print("Username  : $username");
        print("Caption   : $caption");
        print("Likes     : $likes");
        print("Comments  : $comments");
        print("Liked     : $isLiked");
        print("\n=====================================");
    }
}

void main() {
    Post p1 = Post();

    p1.username = "nitin_sharma";
    p1.caption = "Learning Dart OOP with ChatGPT 🚀";
    p1.likes = 1250;
    p1.comments = 185;
    p1.isLiked = true;

    Post p2 = Post();

    p2.username = "Ansh_Flutter";
    p2.caption = "Building my first Flutter App 📱";
    p2.likes = 890;
    p2.comments = 97;
    p2.isLiked = true;

    Post p3 = Post();

    p3.username = "nitin_coder";
    p3.caption = "Dream: Become a Professional Flutter Developer 💙";
    p3.likes = 2100;
    p3.comments = 320;
    p3.isLiked = false;

    p1.showPost();
    print("");

    p2.showPost();
    print("");

    p3.showPost();
}