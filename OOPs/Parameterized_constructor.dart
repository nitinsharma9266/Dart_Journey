class Product{
    late String productname;
    late double productprice;
    late String productcatagory;
    late double productrating;
    late bool productinStock;

    Product(
        String name,
        double price,
        String catagory,
        double rating,
        bool inStock
    ){
        productname=name;
        productprice=price;
        productcatagory=catagory;
        productrating=rating;
        productinStock=inStock;

    }

    void showProductDetails(){
        print("==========PRODUCT DETAILS ==============");
        print("Product Name    : $productname");
        print("Product Price   : $productprice");
        print("Product Catagory: $productcatagory");
        print("Product rating  : $productrating");
        print("Is Product inStock or Not : $productinStock");
        print("");
        print("========================================");

    }
    
    
}
void main(){
   
    Product p1=Product("iphone 13pro max",59000,"Mobile",4.5,true);
    p1.showProductDetails();
    Product p2=Product("Dell XPS 15",125000,"Laptop",4.9,true);
    p2.showProductDetails();
    
}