import 'package:flutter/material.dart';
import 'home_page.dart';
import 'stack_page.dart';
import 'other_page.dart';
import 'grid_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/stack': (context) => StackPage(),
        '/other': (context) => OtherPage(),
        '/grid': (context) => GridPage(),
      },
    );
  }
}
