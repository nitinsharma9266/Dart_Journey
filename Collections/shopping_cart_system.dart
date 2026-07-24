void main() {
    List<String> cart = [
        "Laptop",
        "Mouse",
        "Keyboard",
        "Headphones",
        "Monitor",
    ];

    print("Initial Cart");
    print(cart);

    cart.remove("Mouse");

    cart.removeAt(2);

    cart.removeLast();

    print("\nUpdated Cart");
    print(cart);

    cart.clear();

    print("\nCart After Checkout");
    print(cart);
}