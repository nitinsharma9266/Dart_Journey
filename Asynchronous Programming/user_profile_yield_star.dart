import 'dart:io';

Stream<String> personalDetails() async* {
    stdout.write("Enter Your Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Your Age: ");
    String age = stdin.readLineSync()!;

    yield "Name: $name";
    yield "Age: $age";
}

Stream<String> locationDetails() async* {
    stdout.write("Enter Your City: ");
    String city = stdin.readLineSync()!;

    stdout.write("Enter Your Country: ");
    String country = stdin.readLineSync()!;

    yield "City: $city";
    yield "Country: $country";
}

Stream<String> skillsDetails() async* {
    stdout.write("Enter Your Primary Skill: ");
    String skill1 = stdin.readLineSync()!;

    stdout.write("Enter Your Secondary Skill: ");
    String skill2 = stdin.readLineSync()!;

    yield "Primary Skill: $skill1";
    yield "Secondary Skill: $skill2";
}

Stream<String> completeProfile() async* {

    yield* personalDetails();

    yield* locationDetails();

    yield* skillsDetails();
}

Future<void> main() async {

    print("========== USER PROFILE ==========");

    await for (String information
        in completeProfile()) {

        print("➜ $information");
    }

    print("==================================");
}