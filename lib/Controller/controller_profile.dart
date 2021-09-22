import 'package:get/get.dart';

class ControllerProfile extends GetxController {
  var indextcolor = 1.obs;
  indextcolorChng(indext) {
    indextcolor.value = indext;
    update();
  }

  var indextsize = 1.obs;
  indextsizeChng(indext) {
    indextsize.value = indext;
    update();
  }
}
