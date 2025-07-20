void main() async {
  print("step 01");
 fn(); 
 print("step 03");
}

 Future fn()async{
   await Future.delayed(Duration(seconds:5));
  print("step 02");
}
