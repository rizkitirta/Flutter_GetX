import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/routesNamed.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
              Text("Count Page"),
              ElevatedButton(
                  onPressed: () => Get.toNamed(RoutesNamed.count_page),
                  child: Text("Count>>")),
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
                      title: "Hello",
                      middleText: "Ini Tester",
                      textConfirm: "Ok",
                      onConfirm: () => print('ok'),
                      textCancel: "Batal",
                      onCancel: () => print('keluar'),
                    )),
          ],
        ));
  }
}

class CountPage extends StatelessWidget {
  final count = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Count Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("Angka $count", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),)
              
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Text("Add"),
              onPressed: () => Get.putAsync<SharedPreferences>(() async{
                final prefs = await SharedPreferences.getInstance();
                await prefs.setInt('count', 77);

                count.value = prefs.getInt('count')!.toInt();
                return prefs;
              }),
            ),
          ],
        ));
  }
}
