import 'package:flutter_getx/routes/routesNamed.dart';
import 'package:flutter_getx/screens/screen_1.dart';
import 'package:flutter_getx/screens/screen_2.dart';
import 'package:flutter_getx/screens/screen_3.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../main.dart';

class PagesRoute {
  static final pages = [
    GetPage(name: RoutesNamed.home_page, page: () => HomePage()),
    GetPage(name: RoutesNamed.product_page, page: () => Product()),
    GetPage(name: RoutesNamed.product_page + '/:id?', page: () => DetailPage()),
    GetPage(name: RoutesNamed.count_page, page: () => CountPage()),
    // GetPage(name: RoutesNamed.text_page, page: () => TextPage()),
  ];
}
