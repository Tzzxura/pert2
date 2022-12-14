import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pert2/pages/home.dart';

class LoginController extends GetxController {
  late TextEditingController email, password;
  var focusEmail = FocusNode().obs;
  var focusPassword = FocusNode().obs;
  //* variabel
  var isVisible = false.obs;

  @override
  onInit() {
    email = TextEditingController();
    password = TextEditingController();
    focusEmail.value = FocusNode();
    focusPassword.value = FocusNode();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    focusEmail.value.dispose();
    focusPassword.value.dispose();
    super.dispose();
  }

  // * FUNGSI LOGGIN
  void login() {
    if (email.text == '123' && password.text == '123') {
      Get.to(Home());
      Get.snackbar('Success', 'Login Berhasil',
          colorText: Color(0xff191919),
          backgroundColor: Color(0xffffffff),
          duration: Duration(seconds: 2));
    } else {
      Get.snackbar('Failed', 'Login Gagal',
          colorText: Color(0xff191919),
          backgroundColor: Color(0xffffffff),
          duration: Duration(seconds: 1));
    }
  }
  // * AKHIR FUNGSI LOGIN
}
