import 'package:flutter/material.dart';
import 'package:flutter_project/UI/model/data/user_model.dart';
import 'package:flutter_project/UI/screen/profile_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("User Log in Screen"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  TextFormField(
                      controller: _nameTEController,
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return "Please Enter Name";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
                      )),
                  SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                      controller: _emailTEController,
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return "Please Enter a Valid Email";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                      )),
                  SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                      controller: _passwordTEController,
                      validator: (String? value) {
                        if ((value?.length ?? 0) <= 6) {
                          return "Enter a password more than 6 letters";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Password',
                      )),
                  SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: _onTapLogInButton,
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromWidth(double.maxFinite),
                          backgroundColor: Colors.amber.shade400,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(vertical: 18),
                          textStyle: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        child: Text("Log In")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapLogInButton() {
    UserModel userModel = UserModel(
        name: _nameTEController.text.trim(),
        email: _emailTEController.text.trim(),
        password: _passwordTEController.text);

    if (_key.currentState!.validate()) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProfileScreen(
                    userModel: userModel,
                  ))).then((_) {
        _nameTEController.clear();
        _emailTEController.clear();
        _passwordTEController.clear();
      });
    }
  }

  @override
  void dispose() {
    _nameTEController.dispose();
    _passwordTEController.dispose();
    _emailTEController.dispose();
    super.dispose();
  }
}
