import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:upprog/View/AddProduct/add_product.dart';
import 'package:upprog/View/Home/home_view.dart';
import 'package:upprog/View/Pannier/screen_pannier.dart';
import 'package:upprog/const/list_data.dart';

class ControllerHome extends GetxController {
  var listScreen = const [
    HomeView(),
    Scrennaddproduct(),
    ScreenPannier(),
  ].obs;

  @override
  void onInit() {
    chngeList(0);
    super.onInit();
  }

  var listCard = [].obs;
  var indextnavigator = 0.obs;
  var indextbottonApp = 0.obs;
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

  indextnavigatorChng(indext) {
    indextnavigator.value = indext;
    update();
  }

  indextbottonAppChng(indext) {
    indextbottonApp.value = indext;
    update();
  }
}
