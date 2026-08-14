Stream<int> firstNumbers() async* {
    yield 1;
    yield 2;
    yield 3;
}

Stream<int> allNumbers() async* {
    yield* firstNumbers();

    yield 4;
    yield 5;
}

Future<void> main() async {

    await for (int number in allNumbers()) {
        print(number);
    }
}