import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/myController.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';

import './routes/app_pages.dart';
import './pages/home_page.dart';

import './controllers/usersC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final userC = Get.put(UsersC());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
      getPages: AppPages.pages,
    );
  }
}

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page Satu"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () =>
                      Get.to(() => PageDua(), arguments: "From page 1"),
                  child: Text("Page 2 >>")),
            ],
          ),
        ));
  }
}

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page Dua"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${Get.arguments}"),
              ElevatedButton(
                  onPressed: () => Get.toNamed(RouteName.my_page),
                  child: Text("Page 3 >>")),
            ],
          ),
        ));
  }
}

class PageTiga extends GetView<MyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Tiga"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            controller.obx(
                (state) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network("${state["avatar"]}"),
                        Text(
                            "Nama: ${state['first_name'] + " " + state['last_name']}"),
                        Text("Nama: ${state['email']}"),
                      ],
                    ),
                onLoading: Text("Loading")),
            ElevatedButton(onPressed: () {}, child: Text("Page 2 >>")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.getData(),
        child: Icon(Icons.refresh),
      ),
    );
  }
}
