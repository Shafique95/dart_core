// asnync and syncronus programming

void main() {
  print("Start of the program");
  //sync work
  print("Sync work 1");
  fn1();
  print("Sync work 2");
  print("Sync work 3");
  print("Sync work 4");
}

 fn1() async {
  // work that takes time
  await Future.delayed(Duration(seconds: 2));
  for (int i = 0; i < 1000; i++) {
    print("async work $i");
  }
  fetchData();
  /// how we cant return data from async function
  ///  how get the data from async function
}


 fetchData(){
  print("Fetching data from the server");
  // Simulate a network call
  Future.delayed(Duration(seconds: 3), () {
    print("Data fetched successfully");
  });
 }