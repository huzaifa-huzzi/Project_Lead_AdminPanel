import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_x_adminpanel/Resources/Colors/Colors.dart';
import 'package:project_x_adminpanel/Resources/Resuable%20Widgets/AddUserDialog.dart';
import 'package:project_x_adminpanel/ViewModel/Controllers/RegistrationController.dart';
import '../../Resources/Resuable Widgets/Sizing of Screen.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  final controller = Get.put(RegistrationController());


  @override
  Widget build(BuildContext context) {
    SizingConfig.init(context);
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: AppColors.screenColors,
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  /// Add Button
                  InkWell(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (_) =>
                            AddUserDialog(
                              onAdd: (username, password, name) {
                                controller.addUser(username, password, name);
                              },
                            ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: SizingConfig.width(0.01)),
                          Icon(Icons.add, size:18, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizingConfig.height(0.03),),
              /// Header Row
              Container(
                color: Colors.grey[300],
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: const [
                    Expanded(flex: 3, child: Text("Username", style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(flex: 3, child: Text("Password", style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(flex: 3, child: Text("Name", style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(
                      flex: 2,
                      child: Center(child: Text("Actions", style: TextStyle(fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ),

              /// User Rows
              Expanded(
                child: Obx(() => controller.users.isEmpty
                    ? const Center(child: Text("No users added yet."))
                    : ListView.builder(
                  itemCount: controller.users.length,
                  itemBuilder: (context, index) {
                    final user = controller.users[index];
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(flex: 3, child: Text(user['username'] ?? '')),
                          Expanded(flex: 3, child: Text(user['password'] ?? '')),
                          Expanded(flex: 3, child: Text(user['name'] ?? '')),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red),
                                onPressed: () => controller.deleteUser(index),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )),
              ),

            ],
          ),
        ),
      );
    });
  }

}


