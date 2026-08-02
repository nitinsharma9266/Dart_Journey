class Animal {
    void sound() {
        print("Animal Sound");
    }
}

class Dog extends Animal {
    @override
    void sound() {
        print("Bark");
    }
}

class Cat extends Animal {
    @override
    void sound() {
        print("Meow");
    }
}
void main(){
    Animal animal;

    animal = Dog();
    animal.sound();

    animal = Cat();
    animal.sound();
}