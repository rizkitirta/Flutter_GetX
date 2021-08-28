import 'package:flutter/material.dart';
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
              ElevatedButton(onPressed: () => Get.to(() => PageTiga()), child: Text("Page 3 >>")),
            ],
          ),
        ));
  }
}

class PageTiga extends StatelessWidget {
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
              Text("${Get.previousRoute}"),
              ElevatedButton(onPressed: () {}, child: Text("Page 2 >>")),
            ],
          ),
        ));
  }
}
