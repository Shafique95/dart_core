// lib/pages/user_list_page.dart
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/user_model.dart';

class UserListPage extends StatelessWidget {
  UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Box<UserModel> userBox = Hive.box<UserModel>('users');
    return ValueListenableBuilder(
      valueListenable: userBox.listenable(),
      builder: (context, Box<UserModel> box, _) {
        if (box.values.isEmpty) {
          return const Center(child: Text('No users found.'));
        }

        return ListView.builder(
          itemCount: box.length,
          itemBuilder: (context, index) {
            final user = box.getAt(index);
            return ListTile(
              title: Text(user?.name ?? 'No name'),
              subtitle: Text(user?.email ?? 'No email'),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  box.deleteAt(index);
                },
              ),
            );
          },
        );
      },
    );
  }
}
