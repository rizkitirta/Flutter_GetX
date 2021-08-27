import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/countController.dart';
import 'package:flutter_getx/routes/pages_route.dart';
import 'package:flutter_getx/routes/routesNamed.dart';
import 'package:flutter_getx/screens/screen_1.dart';
// import 'package:flutter_getx/screens/screen_1.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  // final orangController = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: PagesRoute.pages,
    );
  }
}
