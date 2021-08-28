import 'dart:convert';

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  final url = "https://flutter-crud-419ce-default-rtdb.firebaseio.com/";

  // Get data from api
  Future<Response> getUser(int id) => get(url);

  // Post Data
  Future<Response> posData(String name, String email, String phone) {
    final data = jsonEncode({
      "name": name,
      "email": email,
      "phone": phone,
    });

    return post(url + "users.json", data);
  }

  // Delete Data
  Future<Response> deleteData(String id) {
    return delete(url + "users/$id.json");
  }

  Future<Response> editData(
      String id, String name, String email, String phone) {
    final data = jsonEncode({
      "name": name,
      "email": email,
      "phone": phone,
    });

    return patch(url + "users/$id.json", data);
  }
}
