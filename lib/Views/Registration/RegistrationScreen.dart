import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:project_x_adminpanel/Resources/Colors/Colors.dart';
import 'package:project_x_adminpanel/Resources/Resuable Widgets/AddUserDialog.dart';
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
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              /// Add Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => AddUserDialog(
                          onAdd: (username, password, name) {
                            controller.addUser(username, password, name);
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Add',
                            style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.add, size: 18, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: SizingConfig.height(0.03)),

              /// Registered data
              Card(
                elevation: 7,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                shadowColor: Colors.grey.withOpacity(0.5),
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    /// Header Row
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: Row(
                        children: const [
                          Expanded(flex: 3, child: Text("Username", style: TextStyle(fontWeight: FontWeight.bold))),
                          Expanded(flex: 3, child: Text("Password", style: TextStyle(fontWeight: FontWeight.bold))),
                          Expanded(flex: 3, child: Text("Name", style: TextStyle(fontWeight: FontWeight.bold))),
                          Expanded(flex: 2, child: Text("Actions", style: TextStyle(fontWeight: FontWeight.bold))),
                        ],
                      ),
                    ),

                    /// User Rows
                    Obx(() => controller.users.isEmpty
                        ? const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("No users added yet."),
                    )
                        : ListView.builder(
                      itemCount: controller.users.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final user = controller.users[index];
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                          child: Row(
                            children: [
                              Expanded(flex: 3, child: Text(user['username'] ?? '')),
                              Expanded(flex: 3, child: Text(user['password'] ?? '')),
                              Expanded(flex: 3, child: Text(user['name'] ?? '')),
                              Expanded(
                                flex: 2,
                                child: Wrap(
                                  spacing: 8.0,
                                  children: [
                                    IconButton(
                                      icon: Icon(MdiIcons.bookEdit, color: Colors.blue,size: 22,),
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (_) => AddUserDialog(
                                            onAdd: (username, password, name) {
                                              controller.editUser(index, username, password, name);
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                    IconButton(
                                      icon:Icon(MdiIcons.deleteForever, color: Colors.red,),
                                      onPressed: () => controller.deleteUser(index),
                                    ),
                                  ],
                                ),
                              )

                            ],
                          ),
                        );
                      },
                    )),
                  ],
                ),
              )

            ],
          ),
        ),
      );
    });
  }
}
