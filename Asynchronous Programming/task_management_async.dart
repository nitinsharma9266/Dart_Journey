import 'dart:io';

class Task {
    int id;
    String title;
    bool completed;

    Task(
        this.id,
        this.title, {
        this.completed = false,
    });
}

class TaskService {
    List<Task> tasks = [];

    // CREATE
    Future<void> addTask(String title) async {
        await Future.delayed(Duration(seconds: 1),);
        int id = tasks.length + 1;

        tasks.add(Task(id, title),);

        print("\n✅ Task Created Successfully.");
    }

    // READ
    Future<void> showTasks() async {
        await Future.delayed(
            Duration(seconds: 1),
        );

        if (tasks.isEmpty) {
            print("\n📭 No Tasks Found.");
            return;
        }

        print("\n========== TASKS ==========");

        for (Task task in tasks) {
            print(
                "${task.id}. ${task.title} "
                "[${task.completed ? "Completed" : "Pending"}]",
            );
        }

        print("===========================");
    }

    // UPDATE
    Future<void> updateTask(
        int id,
        String newTitle,
    ) async {
        await Future.delayed(Duration(seconds: 1),);

        for (Task task in tasks) {
            if (task.id == id) {
                task.title = newTitle;

                print(
                    "\n✅ Task Updated Successfully.",
                );

                return;
            }
        }

        print("\n❌ Task Not Found.");
    }

    // MARK COMPLETE
    Future<void> completeTask(int id) async {
        await Future.delayed(
            Duration(seconds: 1),
        );

        for (Task task in tasks) {
            if (task.id == id) {
                task.completed = true;

                print(
                    "\n✅ Task Marked as Completed.",
                );

                return;
            }
        }

        print("\n❌ Task Not Found.");
    }

    // DELETE
    Future<void> deleteTask(int id) async {
        await Future.delayed(
            Duration(seconds: 1),
        );

        int oldLength = tasks.length;

        tasks.removeWhere(
            (task) => task.id == id,
        );

        if (tasks.length < oldLength) {
            print(
                "\n🗑️ Task Deleted Successfully.",
            );
        } else {
            print("\n❌ Task Not Found.");
        }
    }
}

Future<void> main() async {

    TaskService service = TaskService();

    while (true) {

        print("\n========== TASK MANAGER ==========");
        print("1. Add Task");
        print("2. View Tasks");
        print("3. Update Task");
        print("4. Complete Task");
        print("5. Delete Task");
        print("6. Exit");
        print("==================================");

        stdout.write("Enter Choice : ");

        int choice = int.parse(
            stdin.readLineSync()!,
        );

        try {

            switch (choice) {

                case 1:

                    stdout.write(
                        "Enter Task Title : ",
                    );

                    String title =
                        stdin.readLineSync()!;

                    if (title.trim().isEmpty) {
                        print(
                            "❌ Task title cannot be empty.",
                        );
                        break;
                    }

                    print("\n⏳ Creating Task...");

                    await service.addTask(
                        title,
                    );

                    break;

                case 2:

                    print("\n⏳ Loading Tasks...");

                    await service.showTasks();

                    break;

                case 3:

                    stdout.write(
                        "Enter Task ID : ",
                    );

                    int id = int.parse(
                        stdin.readLineSync()!,
                    );

                    stdout.write(
                        "Enter New Task Title : ",
                    );

                    String newTitle =
                        stdin.readLineSync()!;

                    print("\n⏳ Updating Task...");

                    await service.updateTask(
                        id,
                        newTitle,
                    );

                    break;

                case 4:

                    stdout.write(
                        "Enter Task ID : ",
                    );

                    int id = int.parse(
                        stdin.readLineSync()!,
                    );

                    print(
                        "\n⏳ Completing Task...",
                    );

                    await service.completeTask(
                        id,
                    );

                    break;

                case 5:

                    stdout.write(
                        "Enter Task ID : ",
                    );

                    int id = int.parse(
                        stdin.readLineSync()!,
                    );

                    print(
                        "\n⏳ Deleting Task...",
                    );

                    await service.deleteTask(
                        id,
                    );

                    break;

                case 6:

                    print(
                        "\n👋 Thank you for using Task Manager.",
                    );

                    return;

                default:

                    print(
                        "\n❌ Invalid Choice.",
                    );
            }

        } on FormatException {

            print(
                "\n❌ Please enter a valid number.",
            );

        } catch (e) {

            print(
                "\n❌ Something went wrong: $e",
            );
        }
    }
}