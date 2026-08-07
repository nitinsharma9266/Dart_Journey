class Box<T> {

    T value;

    Box(this.value);

    void showValue() {
        print("Value : $value");
    }
}
void main() {

    Box<String> name = Box("Nitin");
    Box<int> age = Box(18);
    Box<double> salary = Box(25000.50);

    name.showValue();
    age.showValue();
    salary.showValue();
}