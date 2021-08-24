import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/routesNamed.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => Get.toNamed(RoutesNamed.page_dua), child: Text("Next >>")),
          ],
        ),
      ),
    );
  }
}
