Stream<String> personalDetails() async* {
    yield "Name: Nitin";
    yield "Age: 18";
}

Stream<String> skills() async* {
    yield "Dart";
    yield "Flutter";
}

Stream<String> userInformation() async* {

    yield* personalDetails();

    yield* skills();
}

Future<void> main() async {

    await for (String information
        in userInformation()) {

        print(information);
    }
}