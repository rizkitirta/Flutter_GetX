import 'package:flutter_getx/providers/myProvider.dart';
import 'package:get/get.dart';

class MyController extends GetxController with StateMixin {
  void getData() {
    try {
      MyProvider().getData().then((value) {
        if (value.statusCode == 200) {
          final data = value.body['data'] as Map<String, dynamic>;
          change(data, status: RxStatus.success());
        }
      }, onError: (_) {
        change(null,
            status: RxStatus.error("Tidak Dapat Mengambil Data dari Api"));
      });
    } catch (e) {}
  }
}
