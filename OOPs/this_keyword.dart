class Product{
    late String productname;
    late double productprice;
    late String productcategory;
    late double productrating;
    late bool productinStock;

    Product(
        this.productname,
        this.productprice,
        this.productcategory,
        this.productrating,
        this.productinStock

    ){
        
    }

    void showProductDetails(){
        print("==========PRODUCT DETAILS ==============");
        print("Product Name    : $productname");
        print("Product Price   : $productprice");
        print("Product Category: $productcategory");
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