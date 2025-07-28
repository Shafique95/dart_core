import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({super.key});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  List<Map<String, String>> allUsers = [];

  @override
  void initState() {
    super.initState();
    _loadAllUsers();
  }

  Future<void> _loadAllUsers() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> users = prefs.getStringList('users') ?? [];

    List<Map<String, String>> loadedUsers = [];

    for (String userKey in users) {
      final name = prefs.getString('${userKey}_name') ?? 'N/A';
      final email = prefs.getString('${userKey}_email') ?? 'N/A';
      final password = prefs.getString('${userKey}_password') ?? 'N/A';

      loadedUsers.add({
        'name': name,
        'email': email,
        'password': password,
      });
    }

    setState(() {
      allUsers = loadedUsers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: allUsers.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: allUsers.length,
        itemBuilder: (context, index) {
          final user = allUsers[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              title: Text("Name: ${user['name']}", style: const TextStyle(fontSize: 18)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email: ${user['email']}"),
                  Text("Password: ${user['password']}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
