class Reaction {

    void react() {
        print("Reacted to the post.");
    }

}
class Like extends Reaction {

    @override
    void react() {
        print("❤️ Liked the Post");
    }

}
class Haha extends Reaction {

    @override
    void react() {
        print("😂 Reacted with Haha");
    }

}
class Wow extends Reaction {

    @override
    void react() {
        print("😮 Reacted with Wow");
    }

}
void main() {

    Reaction reaction;

    reaction = Like();
    reaction.react();

    reaction = Haha();
    reaction.react();

    reaction = Wow();
    reaction.react();

}