void main(){
   print("sync work 1");
   function01();
   print("sync work 2");
   function02();
   print("sync work 3");
   function03();
   print("sync work 4");
}

 function01() async{
await  Future.delayed(Duration(seconds:4));
  print("Function 1 call after 4 seconds ");
}
 function02() async{
 await Future.delayed(Duration(seconds:3));
    print("Function 2 call after 3 seconds");
}
 function03() async{
 await Future.delayed(Duration(seconds:2));
    print("Function 3 call after 2 seconds");
}