import 'dart:io';

class MovieTicket {
  String _movieName = "";
  String _customerName = "";
  int _numberOfTickets = 0;
  double _ticketPrice = 0;

  // Getters
  String get movieName => _movieName;
  String get customerName => _customerName;
  int get numberOfTickets => _numberOfTickets;
  double get ticketPrice => _ticketPrice;

  // Setters
  set movieName(String value) {
    if (value.trim().isNotEmpty) {
      _movieName = value;
      print("✅ Movie Name Saved");
    } else {
      print("❌ Movie Name cannot be empty");
    }
  }

  set customerName(String value) {
    if (value.trim().isNotEmpty) {
      _customerName = value;
      print("✅ Customer Name Saved");
    } else {
      print("❌ Customer Name cannot be empty");
    }
  }

  set numberOfTickets(int value) {
    if (value >= 1 && value <= 10) {
      _numberOfTickets = value;
      print("✅ Number Of Tickets Saved");
    } else {
      print("❌ Tickets must be between 1 and 10");
    }
  }

  set ticketPrice(double value) {
    if (value >= 100 && value <= 500) {
      _ticketPrice = value;
      print("✅ Ticket Price Saved");
    } else {
      print("❌ Ticket Price must be between ₹100 and ₹500");
    }
  }

  void showBookingDetails() {
    double totalPrice = _numberOfTickets * _ticketPrice;

    double discount = 0;

    if (_numberOfTickets >= 5) {
      discount = totalPrice * 0.10;
    }

    double finalPrice = totalPrice - discount;

    print("\n========== BOOKING DETAILS ==========");
    print("Movie Name       : $_movieName");
    print("Customer Name    : $_customerName");
    print("Tickets          : $_numberOfTickets");
    print("Ticket Price     : ₹$_ticketPrice");
    print("Total Price      : ₹$totalPrice");
    print("Discount         : ₹$discount");
    print("Final Price      : ₹$finalPrice");
    print("=====================================");
  }
}

void main() {
  MovieTicket ticket = MovieTicket();

  // Movie Name
  while (ticket.movieName.isEmpty) {
    stdout.write("Enter Movie Name: ");
    ticket.movieName = stdin.readLineSync()!;
  }

  // Customer Name
  while (ticket.customerName.isEmpty) {
    stdout.write("Enter Customer Name: ");
    ticket.customerName = stdin.readLineSync()!;
  }

  // Number Of Tickets
  while (ticket.numberOfTickets == 0) {
    stdout.write("Enter Number Of Tickets: ");
    int value = int.parse(stdin.readLineSync()!);
    ticket.numberOfTickets = value;
  }

  // Ticket Price
  while (ticket.ticketPrice == 0) {
    stdout.write("Enter Ticket Price: ");
    double value = double.parse(stdin.readLineSync()!);
    ticket.ticketPrice = value;
  }

  ticket.showBookingDetails();
}