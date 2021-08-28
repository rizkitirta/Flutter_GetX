import 'package:flutter_getx/controllers/myController.dart';
import 'package:flutter_getx/main.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class MyB implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MyController());
  }
  
}