class Product {
  String _productname = "";
  double _price = 0;

  String get productname => _productname;
  double get price => _price;

  set productname(String name) {
    _productname = name;
  }

  set price(double amount) {
    if (amount >= 0) {
      _price = amount;
    } else {
      print("Invalid Price");
    }
  }
}

void main() {
  Product product = Product();

  product.productname = "Laptop";
  product.price = 20000;

  print("Product Name : ${product.productname}");
  print("Product Price : ${product.price}");
}