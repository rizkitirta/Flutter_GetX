import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs;
  var angka = 0.obs;

  void change() => count++;
  void reset() => count.value = 0;

  @override
  void onInit() {
    print("OnInit");
    //Workers

    //Dijalankan Setiap Ada Perubahan
    ever(count, (_) => print("Dijalankan Setiap Saat Perubahan")); 
    everAll([angka, count], (_) => print("Dijalankan Setiap Saat Perubahan")); 
    // super.onInit();

     //Dijalankan Sekali
    once(count, (_) => print("Di Jalankan Sekali"));

    //Dijalankan Setelah 3 Detik (Duration)
    debounce(count, (_) => print("Di Jalankan Setelah Waktu Yang Ditentukan"), time: Duration(seconds: 3));

    interval(count, (_) => print("Di Jalankan Saat Kejadian Berlangsung Sesuai Waktu Yang Ditentukan"));
  }

}
