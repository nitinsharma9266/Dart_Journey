Future<String> getName() {
    return Future.value("Nitin");
}

void main() {
    Future<String> result = getName();

    print(result);
}