import 'package:flutter/material.dart';
import 'package:flutter_project/UI/screen/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(

            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            border: _getInputBorder(Colors.lightBlue),
            enabledBorder: _getInputBorder(Colors.blueGrey),
            focusedBorder: _getInputBorder(Colors.lightBlue),
            errorBorder: _getInputBorder(Colors.red),
            hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400)
        ),
      ),
      title: "",
      home: LoginScreen(),
    );
  }

  static OutlineInputBorder  _getInputBorder(Color color){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width:1.2),
    );
  }
}
