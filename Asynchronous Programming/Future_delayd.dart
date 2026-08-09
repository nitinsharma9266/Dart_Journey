Future<String> getData() {
    return Future.delayed(Duration(seconds: 5),() => "Data Loaded");
}

Future<void> main() async {

    print("Loading...");

    String data = await getData();

    print(data);
}