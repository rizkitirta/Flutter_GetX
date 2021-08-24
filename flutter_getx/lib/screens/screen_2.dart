import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/routesNamed.dart';
import 'package:get/get.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => Get.toNamed(RoutesNamed.product_page + '/1?name=Jaket&ukuran=XL'), child: Text("Product 1 >>")),
            ElevatedButton(onPressed: () => Get.toNamed(RoutesNamed.product_page + '/2?name=Kaos Polos&ukuran=L'), child: Text("Product 2 >>")),
            ElevatedButton(onPressed: () => Get.toNamed(RoutesNamed.product_page + '/3?name=Sepatu futsal&ukuran=43'), child: Text("Product 3 >>")),
          ],
        ),
      ),
    );
  }
}
