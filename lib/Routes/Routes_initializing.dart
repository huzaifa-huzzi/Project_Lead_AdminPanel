import 'package:get/get.dart';
import 'package:project_x_adminpanel/Routes/Routes_name.dart';
import 'package:project_x_adminpanel/Views/DashBoard/DashBoardScreen.dart';
import 'package:project_x_adminpanel/Views/Forms/Form.dart';
import 'package:project_x_adminpanel/Views/Registration/RegistrationScreen.dart';



class AppRoutes {

  static appRoutes () => [
    /// Screens
    GetPage(name:RouteName.formScreen , page: () =>  FormScreen()),
    GetPage(name:RouteName.dashBoardScreen , page: () =>  DashboardScreen()),
    GetPage(name:RouteName.registration , page: () =>  RegistrationScreen()),
  ];


}