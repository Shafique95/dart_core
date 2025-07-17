class BankAccount {
  double _balance = 0.0; 

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient funds");
    }
  }

  double get balance => _balance; 

void main() {
  BankAccount account = BankAccount();
  account.deposit(1000);
  account.withdraw(500);
  print("Balance: ${account.balance}");
}
}