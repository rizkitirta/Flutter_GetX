import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/countController.dart';
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
  final count = Get.put(CountController());

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
          Obx(() => Text("Terjadi Sesuatu : ${count.count} x")),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: TextField(
                onChanged: (_) => count.change(),
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Worker")),
          )
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () => count.reset(),
          ),
        ],
      ),
    );
  }
}
