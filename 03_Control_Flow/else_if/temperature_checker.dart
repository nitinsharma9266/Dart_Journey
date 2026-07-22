import 'dart:io';

void main() {
    stdout.write("Enter City Name: ");
    String city = stdin.readLineSync()!;

    stdout.write("Enter Current Temperature (°C): ");
    double temperature = double.parse(stdin.readLineSync()!);

    print("\n========== WEATHER REPORT ==========");

    if (temperature < -50 || temperature > 60) {
        print("Invalid Temperature Entered");
        return;
    }

    print("City        : $city");
    print("Temperature : ${temperature.toStringAsFixed(1)}°C");

    if (temperature >= 45) {
        print("Weather     : Extreme Heat");
        print("Advice      : Stay indoors, drink plenty of water and avoid direct sunlight.");
    } else if (temperature >= 35) {
        print("Weather     : Very Hot");
        print("Advice      : Wear light clothes and stay hydrated.");
    } else if (temperature >= 25) {
        print("Weather     : Pleasant");
        print("Advice      : Great weather for outdoor activities.");
    } else if (temperature >= 15) {
        print("Weather     : Cool");
        print("Advice      : A light jacket is recommended.");
    } else if (temperature >= 5) {
        print("Weather     : Cold");
        print("Advice      : Wear warm clothes.");
    } else {
        print("Weather     : Freezing");
        print("Advice      : Avoid staying outside for long and wear heavy winter clothing.");
    }

    print("====================================");
}