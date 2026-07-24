// void main() {
//     List<int> numbers = [
//         10,
//         15,
//         20,
//         25,
//         30,
//     ];

//     List<int> evenNumbers = numbers.where((number) {
//         return number % 2 == 0;
//     }).toList();

//     print(evenNumbers);
// }

void main() {
    List<String> products = [
        "Laptop",
        "Mouse",
        "Laptop Bag",
        "Keyboard",
    ];

    List<String> laptops = products.where((product) {
        return product.contains("Laptop");
    }).toList();

    print(laptops);
}