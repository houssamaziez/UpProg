import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class ControllerDrawer extends GetxController {
  var isopn = false;
  final drawerController = ZoomDrawerController();

  opn() {
    isopn = true;
    update();
  }
}
