import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final value = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(title: Text("Other Page")),
      body: Center(
        child: Text(
          "Value received: $value",
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
