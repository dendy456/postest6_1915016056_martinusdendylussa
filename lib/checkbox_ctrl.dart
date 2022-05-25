import 'package:get/get.dart';

class SyaratController extends GetxController {
  // Dijadikan .obs supaya library GetX tau bahwa variable ini mau dijadikan global state
  var setuju = false.obs;
  // Saat sebuah variable dibuat dengan .obs, variable otomatis mendapatkan sebuah getter dan setter
  // Cara akses nya:
  // Untuk getter => object.namaVarible.value
  // Untuk setter => object.namaVariable()

  // Bisa dipanggil di onChanged Checkbox
  onChanged(bool? value) {
    setuju(value);
  }
}
