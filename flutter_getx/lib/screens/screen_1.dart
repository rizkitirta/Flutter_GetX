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
                  onPressed: () => Get.toNamed(RoutesNamed.product_page),
                  child: Text("All Product >>")),
              ElevatedButton(
                  onPressed: () => Get.toNamed(RoutesNamed.product_page),
                  child: Text("All Product >>")),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Text("Show"),
              onPressed: () => Get.snackbar("Test", "Test Snackbar",
                  duration: Duration(seconds: 3),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.amber,
                  backgroundGradient:
                      LinearGradient(colors: [Colors.blue, Colors.green])),
            ),
            FloatingActionButton(
                child: Text("Dialog"),
                onPressed: () => Get.defaultDialog(
                    title: "Hello", middleText: "Ini Tester",
                    textConfirm: "Ok",
                    onConfirm: () => print('ok'),
                    textCancel: "Batal",
                    onCancel: ()=> print('keluar'),

                    )),
          ],
        ));
  }
}
