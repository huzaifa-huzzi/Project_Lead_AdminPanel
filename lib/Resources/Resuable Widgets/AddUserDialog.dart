import 'package:flutter/material.dart';

class AddUserDialog extends StatelessWidget {
  final Function(String username, String password, String name) onAdd;

  const AddUserDialog({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();

    return AlertDialog(
      title: Text('Add User'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: usernameController, decoration: InputDecoration(labelText: 'Username')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Password')),
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Name')),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
        ElevatedButton(
          onPressed: () {
            onAdd(
              usernameController.text,
              passwordController.text,
              nameController.text,
            );
            Navigator.pop(context);
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}
