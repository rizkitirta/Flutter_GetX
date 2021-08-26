import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/countController.dart';
import 'package:flutter_getx/routes/pages_route.dart';
import 'package:flutter_getx/routes/routesNamed.dart';
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
      home: CountPage(),
      getPages: PagesRoute.pages,
    );
  }
}

class CountPage extends StatelessWidget {
  // final countC = Get.lazyPut(() => CountController(), fenix: true);
  final countC = Get.put(CountController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text("Angka ${countC.angka}")),
            // IconButton(onPressed: () => countC.change(), icon: Icon(Icons.add))
            IconButton(onPressed: () => Get.toNamed(RoutesNamed.text_page), icon: Icon(Icons.arrow_right))
          ],
        ),
      ),
    );
  }
}

class TextPage extends StatelessWidget {
  final c = Get.find<CountController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextPage"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: c.textController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Test"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
