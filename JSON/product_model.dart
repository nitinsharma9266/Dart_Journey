class Product {
    int id;
    String name;
    double price;

    Product(
        this.id,
        this.name,
        this.price,
    );

    factory Product.fromJson(
        Map<String, dynamic> json,
    ) {
        return Product(
            json["id"],
            json["name"],
            json["price"].toDouble(),
        );
    }
}