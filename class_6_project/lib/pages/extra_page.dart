import 'package:flutter/material.dart';

class ExtraPage extends StatelessWidget {
  const ExtraPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    final email = args?['email'] ?? 'No Email';
    final password = args?['password'] ?? 'No Password';

    return Scaffold(
      appBar: AppBar(title: Text('Extra Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email: $email', style: TextStyle(fontSize: 20)),
            Text('Password: $password', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
