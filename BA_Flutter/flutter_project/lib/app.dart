import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_project/UI/model/data/user_model.dart';
import 'package:flutter_project/UI/screen/login_screen.dart';
import 'package:flutter_project/UI/screen/profile_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static OutlineInputBorder _getInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 1.2),
    );
  }
}

class _MyAppState extends State<MyApp> {
  UserModel? userModel;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    initUserData();
  }

  Future<void> initUserData() async {
    try {
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      final userJson = sharedPreferences.getString("user");
      if (userJson != null) {
        final Map<String, dynamic> userMap = jsonDecode(userJson);
        userModel = UserModel.fromJson(userMap);
      }
    } catch (e) {

    }

    setState(() {
      _isInitialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const SizedBox();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          border: MyApp._getInputBorder(Colors.lightBlue),
          enabledBorder: MyApp._getInputBorder(Colors.blueGrey),
          focusedBorder: MyApp._getInputBorder(Colors.lightBlue),
          errorBorder: MyApp._getInputBorder(Colors.red),
          hintStyle: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
        ),
      ),
      title: "",
      home: userModel?.login == "LoggedIn"
          ? ProfileScreen()
          : const LoginScreen(),
    );
  }
}
