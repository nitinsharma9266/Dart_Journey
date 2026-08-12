import 'dart:io';

Stream<int> getNumbers() async* {
    yield 10;
    yield 20;
    yield 30;
}

Future<void> main() async {

    await for (int number in getNumbers()) {
        stdout.write("$number ");
    }
}