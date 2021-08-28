import 'package:get/get_connect/connect.dart';

class MyProvider extends GetConnect {
  Future<Response> getData() {
    return get("https://reqres.in/api/users/2");
  }
}
