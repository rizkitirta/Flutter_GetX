import 'package:flutter_getx/bindings/shop_binding.dart';
import 'package:flutter_getx/controllers/shopController.dart';
import 'package:flutter_getx/routes/routesNamed.dart';
import 'package:flutter_getx/screens/home_page.dart';
import 'package:flutter_getx/screens/shop_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


class PagesRoute {
  static final pages = [
    GetPage(name: RoutesNamed.home_page, page: () => HomePage() ),
    GetPage(name: RoutesNamed.shop_page, page: () => ShopPage(),binding: shopBinding()),
  ];
}
