import 'package:flutter/material.dart';
import 'package:flutter_getx/providers/usersP.dart';
import 'package:get/get.dart';
import '../models/user.dart';

class UsersC extends GetxController {
  var users = List<User>.empty().obs;

  void snackBarError(String title,String msg) {
    Get.snackbar(
      title,
      msg,
      duration: Duration(milliseconds: 1200),
      animationDuration: Duration(milliseconds: 300)
    );
  }

  void add(String name, String email, String phone) {
    if (name != '' && email != '' && phone != '') {
      if (email.contains("@")) {
        UserProvider().posData(name, email, phone).then((value) {
          users.add(
            User(
              id: value.body["name"].toString(),
              name: name,
              email: email,
              phone: phone,
            ),
          );
        });

        Get.back();
        snackBarError("Success","Data Berhasil Ditambahkan");
      } else {
        snackBarError("Error","Masukan email dengan valid");
      }
    } else {
      snackBarError("Ups","Semua data harus diisi");
    }
  }

  User userById(String id) {
    return users.firstWhere((element) => element.id == id);
  }

  void edit(String id, String name, String email, String phone) {
    if (name != '' && email != '' && phone != '') {
      if (email.contains("@")) {
        UserProvider().editData(id, name, email, phone).then((value) {
          final user = userById(id);
          user.name = name;
          user.email = email;
          user.phone = phone;
          users.refresh();
        });

        Get.back();
      } else {
        snackBarError("Error","Masukan email valid");
      }
    } else {
      snackBarError("Ups","Semua data harus diisi");
    }
  }

  Future<bool> delete(String id) async {
    bool _deleted = false;
    await Get.defaultDialog(
      title: "DELETE",
      middleText: "Apakah kamu yakin untuk menghapus data user ini?",
      textConfirm: "Ya",
      confirmTextColor: Colors.white,
      onConfirm: () {
        UserProvider().deleteData(id).then((_) {
          users.removeWhere((element) => element.id == id);
          _deleted = true;
        });

        Get.back();
      },
      textCancel: "Tidak",
    );
    return _deleted;
  }
}
