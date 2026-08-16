import 'dart:io';

Future<void> addNote() async {

    stdout.write("Enter Note: ");
    String note = stdin.readLineSync()!;

    if (note.trim().isEmpty) {
        print("❌ Note cannot be empty.");
        return;
    }

    File file = File("notes.txt");

    await file.writeAsString(note);

    print("✅ Note saved successfully.");
}

Future<void> viewNote() async {

    File file = File("notes.txt");

    if (!await file.exists()) {
        print("❌ No note found.");
        return;
    }

    String note = await file.readAsString();

    print("\n========== YOUR NOTE ==========");
    print(note);
    print("================================");
}

Future<void> updateNote() async {

    File file = File("notes.txt");

    if (!await file.exists()) {
        print("❌ No note found.");
        return;
    }

    stdout.write("Enter New Note Name : ");
    String newNote = stdin.readLineSync()!;

    if (newNote.trim().isEmpty) {
        print("❌ Note cannot be empty.");
        return;
    }

    await file.writeAsString(newNote);

    print("✅ Note updated successfully.");
}

Future<void> appendNote() async {

    File file = File("notes.txt");

    if (!await file.exists()) {
        print("❌ No note found.");
        return;
    }

    stdout.write("Enter Additional Text: ");
    String text = stdin.readLineSync()!;

    await file.writeAsString(
        "\n$text",
        mode: FileMode.append,
    );

    print("✅ Text added successfully.");
}

Future<void> deleteNote() async {

    File file = File("notes.txt");

    if (!await file.exists()) {
        print("❌ No note found.");
        return;
    }

    await file.delete();

    print("🗑️ Note deleted successfully.");
}

Future<void> main() async {

    while (true) {

        print("\n========== NOTES MANAGER ==========");
        print("1. Add Note");
        print("2. View Note");
        print("3. Update Note");
        print("4. Add More Text");
        print("5. Delete Note");
        print("6. Exit");
        print("===================================");

        stdout.write("Enter Choice: ");

        String input = stdin.readLineSync()!;

        try {

            int choice = int.parse(input);

            switch (choice) {

                case 1:
                    await addNote();
                    break;

                case 2:
                    await viewNote();
                    break;

                case 3:
                    await updateNote();
                    break;

                case 4:
                    await appendNote();
                    break;

                case 5:
                    await deleteNote();
                    break;

                case 6:
                    print("\n👋 Thank you for using Notes Manager.");
                    return;

                default:
                    print("❌ Invalid choice.");
            }

        } on FormatException {

            print("❌ Please enter a valid number.");

        } catch (e) {

            print("❌ Something went wrong.");
            print("Error: $e");
        }
    }
}