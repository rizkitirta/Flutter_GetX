import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Detail Product ID ${Get.parameters}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product Id ${Get.parameters['id']}"),
            Text("Product Name ${Get.parameters['ukuran']}"),
            ElevatedButton(onPressed: () => Get.back(), child: Text("Back <<")),
          ],
        ),
      ),
    );
  }
}
