Future<void> task() async {
  try {
    await Future.delayed(Duration(seconds: 1));
    throw Exception("Something went wrong!");
  } catch (e) {
    print("Caught error: $e");
  } finally {
    print("Task complete (success or fail).");
  }
}

void main() {
  task();
}
