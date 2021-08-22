import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/orang_controller.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  final orangController = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // final orangController = Get.find<OrangController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Center(
          child: Column(
        children: [
          GetX<OrangController>(
            init: OrangController(),
            builder: (controller) => Text(
              "Nama Saya ${controller.orang.value.nama}",
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GetBuilder<OrangController>(
              init: OrangController(),
              builder: (controller) => Text("Angka ${controller.count}"))
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Text("Up"),
            onPressed: () {
              Get.find<OrangController>().changeToUpper();
            },
          ),
          FloatingActionButton(
            child: Text("Low"),
            onPressed: () {
              Get.find<OrangController>().changeToLower();
            },
          ),
          FloatingActionButton(
            child: Text("+"),
            onPressed: () {
              Get.find<OrangController>().add();
            },
          ),
        ],
      ),
    );
  }
}
