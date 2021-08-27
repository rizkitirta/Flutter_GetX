import 'package:flutter_getx/controllers/shopController.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class shop_item extends StatelessWidget {
  final shopC = Get.find<ShopController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {
              if (shopC.qty.value >= 1) {
                shopC.qty.value--;
                Get.find<ShopController>(tag: 'total').total.value--;
              }
            },
            icon: Icon(Icons.remove)),
        Obx(
          () => Text(
            "${shopC.qty}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        IconButton(
            onPressed: () {
              shopC.qty.value++;
              Get.find<ShopController>(tag: 'total').total.value++;
            },
            icon: Icon(Icons.add)),
      ],
    );
  }
}
