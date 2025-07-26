import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/user_model.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final addressController = TextEditingController();
  final mobileController = TextEditingController();

  bool _obscurePassword = true;

  void _saveUser() async {
    if (_formKey.currentState!.validate()) {
      final box = Hive.box<UserModel>('users');

      final user = UserModel(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        address: addressController.text,
        mobile: mobileController.text,
      );

      await box.add(user);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User saved successfully')),
      );

      // Clear form
      nameController.clear();
      emailController.clear();
      passwordController.clear();
      addressController.clear();
      mobileController.clear();

      // Navigate to /home
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 6,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) => value!.isEmpty ? 'Enter your name' : null,
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value) => value!.isEmpty ? 'Enter your email' : null,
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                      validator: (value) => value!.isEmpty ? 'Enter your password' : null,
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(
                        labelText: 'Address',
                        prefixIcon: Icon(Icons.home),
                      ),
                      validator: (value) => value!.isEmpty ? 'Enter your address' : null,
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: mobileController,
                      decoration: InputDecoration(
                        labelText: 'Mobile',
                        prefixIcon: Icon(Icons.phone),
                      ),
                      validator: (value) => value!.isEmpty ? 'Enter your mobile' : null,
                    ),
                    SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _saveUser,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text("Sign Up"),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Already have an account? Sign In",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
