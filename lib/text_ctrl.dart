import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  var pembeli = "".obs;
  var alamat = "".obs;
  var noHp = "".obs;

  final pembeliCtrl = TextEditingController();
  final alamatCtrl = TextEditingController();
  final noHpCtrl = TextEditingController();
  onPressed() {
    pembeli = pembeliCtrl.text.obs;
    alamat = alamatCtrl.text.obs;
    noHp = noHpCtrl.text.obs;
  }

  @override
  void onClose() {
    pembeliCtrl.dispose();
    alamatCtrl.dispose();
    noHpCtrl.dispose();
    super.onClose();
  }
}
