import 'dart:io';

// ========================================
// INTERFACE
// ========================================

abstract class Billable {
    double calculateBill();
}

// ========================================
// MIXIN
// ========================================

mixin HospitalNotification {

    void sendNotification(String message) {
        print("\n🔔 Notification: $message");
    }
}

// ========================================
// ABSTRACT CLASS
// ========================================

abstract class Patient
    with HospitalNotification
    implements Billable {

    String _name = "";
    int _age = 0;
    double _bill = 0;

    // ========================================
    // GETTERS
    // ========================================

    String get name => _name;

    int get age => _age;

    double get bill => _bill;

    // ========================================
    // SETTERS
    // ========================================

    set name(String value) {

        if (value.trim().isNotEmpty) {
            _name = value.trim();
        } else {
            print("❌ Name cannot be empty.");
        }
    }

    set age(int value) {

        if (value > 0 && value <= 120) {
            _age = value;
        } else {
            print("❌ Invalid age.");
        }
    }

    // ========================================
    // INPUT DETAILS
    // ========================================

    void inputDetails() {

        stdout.write("Enter Patient Name : ");
        name = stdin.readLineSync()!;

        stdout.write("Enter Patient Age : ");
        age = int.parse(stdin.readLineSync()!);
    }

    // ========================================
    // ABSTRACT METHOD
    // ========================================

    void patientType();

    // ========================================
    // SHOW DETAILS
    // ========================================

    void showDetails() {

        print("\n========== PATIENT DETAILS ==========");
        print("Patient Name : $name");
        print("Age          : $age");
        print("Bill         : ₹$bill");
        print("=====================================");
    }
}

// ========================================
// GENERAL PATIENT
// ========================================

class GeneralPatient extends Patient {

    @override
    double calculateBill() {

        _bill = 500;

        return _bill;
    }

    @override
    void patientType() {

        print("Patient Type : General");
    }
}

// ========================================
// ICU PATIENT
// ========================================

class ICUPatient extends Patient {

    @override
    double calculateBill() {

        _bill = 5000;

        return _bill;
    }

    @override
    void patientType() {

        print("Patient Type : ICU");
    }
}

// ========================================
// EMERGENCY PATIENT
// ========================================

class EmergencyPatient extends Patient {

    @override
    double calculateBill() {

        _bill = 10000;

        return _bill;
    }

    @override
    void patientType() {

        print("Patient Type : Emergency");
    }
}

// ========================================
// GENERIC CLASS
// ========================================

class HospitalRecord<T extends Patient> {

    T patient;

    HospitalRecord(this.patient);

    void showRecord() {

        print("\n========== HOSPITAL RECORD ==========");
        print("Patient Name : ${patient.name}");
        print("Age          : ${patient.age}");

        patient.patientType();

        print("Total Bill   : ₹${patient.bill}");
        print("=====================================");
    }
}

// ========================================
// MAIN
// ========================================

void main() {

    while (true) {

        print("\n========== HOSPITAL MANAGEMENT ==========");
        print("1. General Patient");
        print("2. ICU Patient");
        print("3. Emergency Patient");
        print("4. Exit");

        stdout.write("Enter Choice : ");

        int choice = int.parse(
            stdin.readLineSync()!
        );

        Patient patient;

        // ========================================
        // POLYMORPHISM
        // ========================================

        switch (choice) {

            case 1:
                patient = GeneralPatient();
                break;

            case 2:
                patient = ICUPatient();
                break;

            case 3:
                patient = EmergencyPatient();
                break;

            case 4:
                print(
                    "\n🙏 Thank You for Using Hospital System."
                );
                return;

            default:
                print("❌ Invalid Choice.");
                continue;
        }

        // ========================================
        // INPUT
        // ========================================

        patient.inputDetails();

        // ========================================
        // POLYMORPHIC METHOD
        // ========================================

        patient.calculateBill();

        // ========================================
        // PATIENT TYPE
        // ========================================

        patient.patientType();

        // ========================================
        // MIXIN
        // ========================================

        patient.sendNotification(
            "Patient record created successfully."
        );

        // ========================================
        // GENERIC RECORD
        // ========================================

        if (patient is GeneralPatient) {

            HospitalRecord<GeneralPatient> record =
                HospitalRecord(patient);

            record.showRecord();

        } else if (patient is ICUPatient) {

            HospitalRecord<ICUPatient> record =
                HospitalRecord(patient);

            record.showRecord();

        } else if (patient is EmergencyPatient) {

            HospitalRecord<EmergencyPatient> record =
                HospitalRecord(patient);

            record.showRecord();
        }

        // ========================================
        // SHOW DETAILS
        // ========================================

        patient.showDetails();

        print("\nPress Enter to Continue...");
        stdin.readLineSync();
    }
}