import 'dart:convert';

void main() {
    String jsonData = '''
    {
        "name": "Nitin",
        "age": 18,
        "address": {
            "city": "Hardoi",
            "state": "Uttar Pradesh"
        }
    }
    ''';

    Map<String, dynamic> user =
        jsonDecode(jsonData);

    print("Name: ${user["name"]}");
    print("Age: ${user["age"]}");

    Map<String, dynamic> address =
        user["address"];

    print("City: ${address["city"]}");
    print("State: ${address["state"]}");
}