import 'dart:async';

void main() async {
  print('Welcome to Dart Diner!');

  // Start order process
  orderFood();

  print('Thanks for visiting Dart Diner!');
}

Future<void> orderFood() async {
  print('Taking your order...');
  await Future.delayed(Duration(seconds: 0));
  print('Order received!');

  prepareFood();
  serveFood();
  collectPayment();
}

Future<void> prepareFood() async {
  print('Preparing food...');
  await Future.delayed(Duration(seconds: 0));
  print('Food is ready!');
}

Future<void> serveFood() async {
  print('Serving food to customer...');
  await Future.delayed(Duration(seconds: 0));
  print('Customer is eating...');
  await Future.delayed(Duration(seconds: 0));
  print('Customer finished eating.');
}

Future<void> collectPayment() async {
  print('Collecting payment...');
  await Future.delayed(Duration(seconds: 0));
  print('Payment received. Have a nice day!');
}
