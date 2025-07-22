import 'dart:async';

Stream<int> generateCountNumberService(int startFrom, int endAt) async* {
  for (int i = startFrom; i <= endAt; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

void main() {
  var numberStream = generateCountNumberService(1, 10);
  numberStream.listen((containEachNumber) {
    print("Received number: $containEachNumber");
    if (containEachNumber.isEven) {
      print("Even number: $containEachNumber");
    } else {
      print("Odd number: $containEachNumber");
    }
  }, onDone: () {
    print("Stream completed");
  }, onError: (error) {
    print("Error occurred: $error");
  });
  final stmController = StreamController<int>();

  stmController.stream.listen((value) {
    print("Received from controller: $value");
  }, onDone: () {
    print("Stream from controller completed");
  }, onError: (error) {
    print("Error from controller: $error");
  });
  
  print("Adding values to the controller stream");
  stmController.sink.add(10);
  stmController.sink.add(20);
}
