import 'package:flutter/material.dart';
import 'package:project_x_adminpanel/Resources/Resuable%20Widgets/Sizing%20of%20Screen.dart';

class AddUserDialog extends StatelessWidget {
  final Function(String username, String password, String name) onAdd;

  const AddUserDialog({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    SizingConfig.init(context);
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: const Text('Add User'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: SizingConfig.height(0.01)),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: SizingConfig.height(0.01)),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: SizingConfig.height(0.01)),
          ],
        ),
      ),
      actionsPadding: const EdgeInsets.only(bottom: 8, right: 8),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey[600],
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            onAdd(
              usernameController.text,
              passwordController.text,
              nameController.text,
            );
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
