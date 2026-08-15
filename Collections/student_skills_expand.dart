import 'dart:io';

void main() {

    List<List<String>> studentSkills = [];

    stdout.write("How many students? ");

    int studentCount = int.parse(
        stdin.readLineSync()!,
    );

    for (int i = 0; i < studentCount; i++) {

        print("\nStudent ${i + 1}");

        stdout.write("How many skills? ");

        int skillCount = int.parse(
            stdin.readLineSync()!,
        );

        List<String> skills = [];

        for (int j = 0; j < skillCount; j++) {

            stdout.write(
                "Enter Skill ${j + 1}: ",
            );

            String skill =
                stdin.readLineSync()!;

            skills.add(skill);
        }

        studentSkills.add(skills);
    }

    List<String> allSkills =
        studentSkills.expand((skills) {
            return skills;
        }).toList();

    print("\n========== ALL SKILLS ==========");

    for (String skill in allSkills) {
        print(skill);
    }

    print("================================");
}