// Future<void> main() async {
//     print("Hello");
// }
Future<String> getName() {
    return Future.value("Nitin");
}

Future<void> main() async {

    String name = await getName();

    print(name);
}