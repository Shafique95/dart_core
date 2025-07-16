class Donate {
  String sender;
  int amount;

  Donate(this.sender, this.amount);

  void displayDetails() {
    print('Sender: $sender => Amount: $amount');
  }

  bool isOverThousand() {
    return amount >= 1000;
  }

  String greet(String greeting) {
    return '$greeting $sender, for donating $amount tk';
  }
}

void main() {
  var donation1 = Donate('Alice', 10000);
  var donation2 = Donate('Bob', 100);

  donation1.displayDetails();
  donation1.isOverThousand() ? print(donation1.greet('Thank You')):'';
  donation2.displayDetails();
  donation2.isOverThousand() ? print(donation2.greet('Thank You')):'';
}