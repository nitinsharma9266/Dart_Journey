void main() {
    List<String> products = [
        "Laptop",
        "Mouse",
        "Keyboard",
        "Monitor",
        "Headphones",
    ];

    print("Available Products");
    print(products);

    print("\nContains Laptop?");
    print(products.contains("Laptop"));

    print("\nKeyboard Index");
    print(products.indexOf("Keyboard"));

    products.sort();

    print("\nSorted Products");
    print(products);

    print("\nFeatured Products");
    print(products.sublist(0, 3));

    print("\nReverse Order");
    print(products.reversed.toList());
}