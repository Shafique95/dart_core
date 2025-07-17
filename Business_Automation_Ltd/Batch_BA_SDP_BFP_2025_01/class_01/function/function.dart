import 'dart:io';

void printadd(int a,int b){
  int sum = a+b;
  print("Sum of $a and $b is: $sum");
}

void printsub(int a,int b){
  int sub = a-b;
  print("Sub of $a and $b is: $sub");
}

void printmul(int a,int b){
  int mul = a*b;
  print("mul of $a and $b is: $mul");
}

void printdiv(int a,int b){
  double div = a/b;
  print("Div of $a and $b is: $div");
}

void main(){
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  printadd(a,b);
  printsub(a,b);
  printmul(a,b);
  printdiv(a,b);
}