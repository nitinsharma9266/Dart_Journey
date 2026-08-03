// Abstract class ka object create nhi ho sakta hai 

abstract class Animal {

    void sound();

}
class Dog extends Animal {

    @override
    void sound() {
        print("Dog Barks");
    }

}
class Cat extends Animal {

    @override
    void sound() {
        print("Cat Meows");
    }

}
void main() {

    Dog dog = Dog();
    dog.sound();

    Cat cat = Cat();
    cat.sound();

}