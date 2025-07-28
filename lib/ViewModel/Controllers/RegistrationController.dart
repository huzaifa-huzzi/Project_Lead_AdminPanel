

import 'package:get/get.dart';

class RegistrationController extends GetxController {
  var users = <Map<String, String>>[].obs;
  Rx<bool> loading = false.obs;


  /// adding user logic
  void addUser(String username,String password,String name){
   users.add({
     'username' : username,
      'password' : password,
      'name' : name,
   });
    
  }

  /// Deleting user
 void deleteUser(int index){
    users.removeAt(index);
 }

  /// Edit user data
  void editUser(int index, String username, String password, String name) {
    users[index] = {
      'username': username,
      'password': password,
      'name': name,
    };
  }






}