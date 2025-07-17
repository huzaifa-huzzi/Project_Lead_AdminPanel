import 'package:flutter/material.dart';
import 'package:project_x_adminpanel/Resources/Theme/Theme.dart';
import 'package:project_x_adminpanel/Views/DashBoard/DashBoardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project x Admin Panel',
      debugShowCheckedModeBanner: false,
      theme:lightTheme,
      home: DashboardScreen(),
    );
  }
}
