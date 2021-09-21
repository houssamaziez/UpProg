import 'package:get/get.dart';

class ControllerProfile extends GetxController {
  var indextcolor = 1.obs;
  indextcolorChng(indext) {
    indextcolor.value = indext;
    update();
  }
}
