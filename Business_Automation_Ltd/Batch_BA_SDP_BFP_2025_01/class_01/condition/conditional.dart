
void main() {
  int number = 10;

  number==10 ? print('ternary Number is 5') : print(' ternary Number is not 5');

  // Simple if condition
  if (number > 5) {
    print('$number is greater than 5');
  }

  // if-else condition
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }

  // if-else if-else condition
  if (number < 0) {
    print('$number is negative');
  } else if (number == 0) {
    print('Number is zero');
  } else {
    print('$number is positive');
  }

}
