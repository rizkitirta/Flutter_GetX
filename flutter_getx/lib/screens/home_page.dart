import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/routesNamed.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Get.toNamed(RoutesNamed.shop_page),
                child: Text("Shop>>")),
          ],
        ),
      ),
    );
  }
}
