import 'package:upprog/View/Auth/login_screen.dart';
import 'package:upprog/View/Start/slction.dart';

import 'package:upprog/View/Start/start_home.dart';

import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ControllerStart extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 6), () {
      // Get.offAll(const StartHome());
      Get.offAll(LoginScreen());
    });
    super.onInit();
  }
}
