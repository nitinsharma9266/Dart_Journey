void main() {
    List<String> patients = [
        "Rahul",
        "Aman",
    ];

    print("Initial Patients");
    print(patients);

    patients.add("Nitin");

    patients.addAll([
        "Priya",
        "Rohit",
    ]);

    patients.insert(1, "Emergency Patient");

    patients.insertAll(0, [
        "VIP Patient 1",
        "VIP Patient 2",
    ]);

    print("\nUpdated Patients");
    print(patients);
}