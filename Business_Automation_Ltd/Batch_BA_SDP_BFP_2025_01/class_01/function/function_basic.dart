printMyName() {
  print("My name is John Doe");
}

printSumOfTwoNumber() {
  int a = 5;
  int b = 10;
  print("Sum of $a and $b is ${a + b}");
}

void divTwo() {
  int a = 20;
  int b = 4;
  print("Division of $a by $b is ${a / b}");
}

/// functions type
/// void
/// int
int empBalnace() {
  var balance = 1000;
  var empName = "John Doe";
  var weBalance = 2000;
  var totalBalance = balance + weBalance;
  return totalBalance;
}

double empSalaryCal(
  double basic,
  double al,
) {
  double total = basic + al;
  return total;
}

/// fn more details postional and named arguments
/// optional positional arguments

main() {
  int tbal = empBalnace();
  tbal = 30000;

  var empSal = empSalaryCal(5000, 2000); // arguments 5000 and 2000
  print(empSal);

  print("Total balance is $tbal");

  /// null concept
  String?empName;

  print(empName); // nullable variable
}
