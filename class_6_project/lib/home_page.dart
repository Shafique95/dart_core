import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/stack',
                  arguments: "Hello from Home!",
                );
              },
              child: Text("Go to Stack Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid');
              },
              child: Text("Go to Grid Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/other',
                  arguments: 42,
                );
              },
              child: Text("Go to Other Page"),
            ),

          ],
        ),
      ),
    );
  }
}
