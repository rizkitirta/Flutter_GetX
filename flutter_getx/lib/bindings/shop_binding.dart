import 'package:flutter_getx/controllers/shopController.dart';
import 'package:get/get.dart';

class shopBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ShopController(), tag: 'total');
    Get.create(() => ShopController());
  }
  
}
