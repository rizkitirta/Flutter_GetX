import 'package:flutter_getx/routes/routesNamed.dart';
import 'package:flutter_getx/screens/screen_1.dart';
import 'package:flutter_getx/screens/screen_2.dart';
import 'package:flutter_getx/screens/screen_3.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class PagesRoute {
  static final pages = [
    GetPage(name: RoutesNamed.page_dua, page: () => PageDua()),
    GetPage(name: RoutesNamed.page_tiga, page: () => PageTiga()),
  ];
}