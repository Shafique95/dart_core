import 'dart:io';

void main() {
  int marks = int.parse(stdin.readLineSync()!);
  print("Your Grade is: ");
  if(marks>=80) print("A+");
  else if(marks<80 && marks>=75) print("A");
  else if(marks<75 && marks>=70) print("A-");
  else if(marks<70 && marks>=65) print("B+");
  else if(marks<65 && marks>=60) print("B");
  else if(marks<60 && marks>=55) print("B-");
  else if(marks<55 && marks>=50) print("C+");
  else if(marks<50 && marks>=45) print("C");
  else if(marks<45 && marks>=40) print("D");
  else print("F");
  
}
