import 'package:get/get.dart';

class ControllerSettings extends GetxController {
  var status = false.obs;
  statusbool(isstor) {
    status.value = isstor;
  }
}
