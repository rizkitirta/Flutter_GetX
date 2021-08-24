import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/routesNamed.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => Get.offAllNamed(RoutesNamed.page_tiga), child: Text("Next >>")),
            ElevatedButton(onPressed: () => Get.back(), child: Text("Back <<")),
          ],
        ),
      ),
    );
  }
}
