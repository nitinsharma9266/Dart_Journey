class Reaction {
    void react() {
        print("Reaction");
    }
}

class Like extends Reaction {

    @override
    void react() {
        print("Like");
    }

    void heartAnimation() {
        print("❤️ Animation");
    }
}

void main() {

    Reaction reaction = Like();

    reaction.react();          // ✅ Allowed

    // reaction.heartAnimation(); ❌ Error
}