import 'package:flutter_getx/bindings/myB.dart';
import 'package:flutter_getx/main.dart';
import 'package:get/get.dart';

import './route_name.dart';

import '../bindings/profileB.dart';
import '../bindings/addB.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';
import '../pages/add_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.profile,
      page: () => ProfilePage(),
      binding: ProfileB(),
    ),
    GetPage(
      name: RouteName.add,
      page: () => AddPage(),
      binding: AddUserB(),
    ),
    GetPage(name: RouteName.my_page, page: () => PageTiga(), binding: MyB())
  ];
}
