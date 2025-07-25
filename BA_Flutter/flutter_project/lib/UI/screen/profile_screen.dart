import 'package:flutter/material.dart';
import 'package:flutter_project/UI/model/data/user_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key, required this.userModel,
  });

 final UserModel userModel;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.amber.shade300,
                child: Text(
                  widget.userModel.name.isNotEmpty ? widget.userModel.name[0].toUpperCase() : "?",
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
            Text(widget.userModel.name, style: const TextStyle(fontSize: 16)),
            const Divider(height: 32),

            const Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 6),
            Text(widget.userModel.email, style: const TextStyle(fontSize: 16)),
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
                        ? widget.userModel.password
                        : '*' * widget.userModel.password.length,
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
    );
  }
}
