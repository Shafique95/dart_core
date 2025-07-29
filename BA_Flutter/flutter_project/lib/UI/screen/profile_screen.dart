import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/UI/model/data/user_model.dart';
import 'package:flutter_project/UI/screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });



  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isPasswordVisible = false;
  UserModel? userModel;
  bool _inProgress = false;
  @override
  void initState() {
    initUserData();
    Future.delayed(Duration(seconds: 2));
    super.initState();
  }

  Future<void>initUserData() async {
    UserModel? loadData = await getUserData();
      userModel = loadData;
      _inProgress = false;
      setState(() {
      });

  }

  Future<UserModel> getUserData() async {
    _inProgress = true;
    setState(() {
    });
    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    final userJson = sharedPreferences.getString("user");
    if(userJson == null){
      throw Exception("No user data found");
    }else{
      final Map<String , dynamic> userMap = jsonDecode(userJson);
     return UserModel.fromJson(userMap);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(onPressed: _logout, icon: Icon(Icons.logout_outlined))
        ],
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Visibility(
            visible: _inProgress == false,
            replacement: Center(child: CircularProgressIndicator(),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.amber.shade300,
                    child: Text(
                       userModel!.name[0].toUpperCase() ,
                      style: const TextStyle(fontSize: 32, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                const Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 6),
                Text(userModel!.name, style: const TextStyle(fontSize: 16)),
                const Divider(height: 32),

                const Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 6),
                Text(userModel!.email, style: const TextStyle(fontSize: 16)),
                const Divider(height: 32),

                const Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 6),

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        _isPasswordVisible
                            ? userModel!.password
                            : '*' * userModel!.password.length,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey[700],
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _logout() async {
    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    sharedPreferences.clear();
    setState((){});
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
          (route) => false,
    );


  }
}
