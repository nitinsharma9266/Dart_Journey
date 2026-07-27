class Product{
    late String productname;
    late double price;
    late String catagory;
    late double rating;
    late bool inStock;

    Product(){
        print("Product Object Created Successfully");
    }
}
void main(){
    Product p1=Product();

    // We can crete multiple constructor.
    // Product p2 = Product(); 
    // Product p3 = Product();
    
}