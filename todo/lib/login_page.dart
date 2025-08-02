import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/widgets/text_input_field_widen.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> saveLoginInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", nameController.text);
    await prefs.setString("email", emailController.text);
    await prefs.setString("password", passwordController.text);
    await prefs.setBool("isLogin", true);
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _validateFormAndLogin() {
    if (_formKey.currentState!.validate()) {
      saveLoginInfo();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  HomePage()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Form is NOT valid!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 12,
        
                children: [
                  SizedBox(height: 100),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 10,
                    ),
                  ),
                  SizedBox(height: 70),
                  KTextInputFieldWiden(
                    title: "Name",
                    required: true,
                    controller: nameController,
                  ),
                  KTextInputFieldWiden(
                    title: "Email",
                    required: true,
                    controller: emailController,
                  ),
                  KTextInputFieldWiden(
                    title: "Password",
                    required: true,
                    controller: passwordController,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _validateFormAndLogin,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      fixedSize: Size(300, 50),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
