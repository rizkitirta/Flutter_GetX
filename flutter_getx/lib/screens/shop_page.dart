import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/shopController.dart';
import 'package:flutter_getx/screens/shop_item.dart';
import 'package:get/get.dart';

class ShopPage extends StatelessWidget {
  // final total = Get.put(ShopController(), tag: 'total');
  // final qtyC = Get.create(() => ShopController());
  final total = Get.find<ShopController>(tag:'total');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200]),
              child: Center(
                  child: Obx(() => Text(
                        "${total.total.value}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            shop_item(),
            shop_item(),
            shop_item(),
          ],
        ),
      ),
    );
  }
}
