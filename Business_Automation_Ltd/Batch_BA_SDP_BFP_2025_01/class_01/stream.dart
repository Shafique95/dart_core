import 'dart:async'; // <-- REQUIRED IMPORT
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 1. Properly declared StreamController
  final StreamController<String> _controller = StreamController<String>();
  String _displayText = "Waiting for input...";

  @override
  void initState() {
    super.initState();
    // 2. Setting up the stream listener
    _controller.stream.listen((data) {
      setState(() {
        _displayText = "Received: $data";
      });
    });
  }

  @override
  void dispose() {
    _controller.close(); // 3. Always close the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_displayText, style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Send Test Message'),
                onPressed: () {
                  // 4. Adding data to the stream
                  _controller.sink.add('Hello at ${DateTime.now().second}');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}