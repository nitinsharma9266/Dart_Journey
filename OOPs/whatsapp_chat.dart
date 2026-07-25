class Chat{
  late String sender;
  late String receiever;
  late String message;
  late String time;

  void showMessage(){
    print("From    : $sender");
    print("To      : $receiever");
    print("Message : $message");
    print("Time    : $time");
  }
}
void main(){
  Chat chat1 = Chat();
  chat1.sender = "Nitin Sharma";
  chat1.receiever = "Ansh Rastogi";
  chat1.message = "Hi I am Nitin Sharma.";
  chat1.time = "08 : 00 PM";
  chat1.showMessage();

  print("");

  Chat chat2 = Chat();
  chat2.sender = "Rahul kumar";
  chat2.receiever = "Harshit";
  chat2.message = "Hello ! Nice to Meet You.";
  chat2.time = "08 : 05 PM";
  chat2.showMessage();
}