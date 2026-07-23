import 'dart:io';
import 'dart:math';

void main() {
  // Secure Random Generator
  Random random = Random.secure();

  // 6 Digit OTP Generate
  int otp = 100000 + random.nextInt(900000);

  // Practice ke liye OTP print kar rahe hain
  print("Generated OTP : $otp\n");

  int enteredOTP = 0;
  int attempts = 0;
  const int maxAttempts = 3;

  while (enteredOTP != otp && attempts < maxAttempts) {
    stdout.write("Enter OTP : ");
    enteredOTP = int.parse(stdin.readLineSync()!);

    attempts++;

    if (enteredOTP != otp) {
      print("❌ Invalid OTP");

      if (attempts < maxAttempts) {
        print("Remaining Attempts : ${maxAttempts - attempts}\n");
      }
    }
  }

  if (enteredOTP == otp) {
    print("\n✅ OTP Verified Successfully");
    print("Welcome!");
    print("Attempts Used : $attempts");
  } else {
    print("\n❌ OTP Verification Failed");
    print("Account Locked");
  }
}