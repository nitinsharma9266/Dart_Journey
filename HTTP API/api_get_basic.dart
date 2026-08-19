import 'package:http/http.dart' as http;

Future<void> main() async {
    Uri url = Uri.parse(
        'https://jsonplaceholder.typicode.com/posts/1',
    );

    final response = await http.get(url);

    print("Status Code: ${response.statusCode}");

    print("\nResponse Body:");
    print(response.body);
}