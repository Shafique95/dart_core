import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text("Scrollable Stack Page")),
      body: Stack(
        children: [
          // Background
          Container(color: Color(0xFFF4F4F4)),

          // Scrollable content
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 80, bottom: 100),
            child: Column(
              children: List.generate(
                20,
                    (index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: 100,
                  width: double.infinity,
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Center(
                    child: Text(
                      'Box ${index + 1}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Message at top
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              message,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          // Floating heart icon
          Positioned(
            bottom: 30,
            right: 30,
            child: Icon(Icons.favorite, color: Colors.red, size: 40),
          ),
        ],
      ),
    );
  }
}
