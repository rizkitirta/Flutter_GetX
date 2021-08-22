import 'package:flutter_getx/models/orang.dart';
import 'package:get/get.dart';

class OrangController extends GetxController {
  var orang = Orang(nama: "tirta", umur: 19).obs;

  void changeToUpper() {
    orang.update((val) {
      orang.value.nama = orang.value.nama.toString().toUpperCase();
    });
  }

  void changeToLower() {
    orang.update((val) {
      orang.value.nama = orang.value.nama.toString().toLowerCase();
    });
  }
}