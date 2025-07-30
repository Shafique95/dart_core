import 'package:class5/model/user_register_model.dart';
import 'package:flutter/material.dart';

import 'my_home_page.dart';

class UserFormHandling extends StatefulWidget {
  const UserFormHandling({super.key});

  @override
  State<UserFormHandling> createState() => _UserFormHandlingState();
}

class _UserFormHandlingState extends State<UserFormHandling> {
  final _formKey = GlobalKey<FormState>();
  final userName = TextEditingController();
  final userEmail = TextEditingController();
  final userPassword = TextEditingController();

  @override
  void dispose() {
    userName.dispose();
    userEmail.dispose();
    userPassword.dispose();
    super.dispose();
  }

  void handleSubmit() {
    if (_formKey.currentState!.validate()) {
      // যদি সব ভ্যালিড হয়
      final name = userName
          .text; // here text is a getter function >>>> study how getter fn work most important
      final email = userEmail.text;
      final password = userPassword.text;
      var userRegisterModel = UserRegisterModel(userName: name,userEmail: email,userPassword: password);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(
            title: "Class 07",
            userRegisterModel: userRegisterModel,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Registration"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(

              children: [
                const Text(
                  "Register Below",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                // Name Field
                TextFormField(
                  controller: userName,
                  decoration: InputDecoration(
                    labelText: "User Name",
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),

                // Email Field
                TextFormField(
                  controller: userEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),

                // Password Field
                TextFormField(
                  controller: userPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 25),

                // Submit Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: handleSubmit,
                    child: const Text("SignUp"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("+"),
      ),
    );
  }
}
