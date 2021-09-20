import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:upprog/const/list_data.dart';

class ControllerHome extends GetxController {
  @override
  void onInit() {
    chngeList(0);
    super.onInit();
  }

  var listCard = [].obs;
  var indextnavigator = 0.obs;
  final drawerController = ZoomDrawerController();
  chngeList(indext) {
    switch (indext) {
      case 0:
        listCard.value = list_produit_DataAll;
        update();
        break;
      case 1:
        listCard.value = list_produit_DataRecent;
        update();
        break;
      case 2:
        listCard.value = list_produit_DataPopolar;
        update();
        break;
      default:
    }
  }

  navigIndext(indext) {
    indextnavigator.value = indext;
    update();
  }
}
