import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/orang_controller.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  // final orangController = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // final orangController = Get.find<OrangController>();
  final CountController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<CounterController>(
            id: 1,
            builder: (_) => Text(
              "ID ${CountController.count}",
              style: TextStyle(fontSize: 30),
            ),
          ),
          GetBuilder<CounterController>(
            id: 2,
            builder: (_) => Text(
              "ID ${CountController.count}",
              style: TextStyle(fontSize: 30),
            ),
          ),
          GetBuilder<CounterController>(
            id: 3,
            builder: (_) => Text(
              "ID ${CountController.count}",
              style: TextStyle(fontSize: 30),
            ),
          ),
          // GetX<OrangController>(
          //   init: OrangController(),
          //   builder: (controller) => Text(
          //     "Nama Saya ",
          //     style: TextStyle(fontSize: 30),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // GetBuilder<OrangController>(
          //     init: OrangController(),
          //     builder: (controller) => Text("Angka ${controller.count}"))
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Get.find<CounterController>().add();
            },
          ),
        ],
      ),
    );
  }
}

class CounterController extends GetxController {
  var count = 0.obs;

  void add() {
    count++;
    update([2,3]);
  }
}
