import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class ControllerHome extends GetxController {
  var indextnavigator = 0.obs;
  final drawerController = ZoomDrawerController();

  navigIndext(indext) {
    indextnavigator.value = indext;
    update();
  }
}
