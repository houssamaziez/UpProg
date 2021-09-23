import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:upprog/View/AddProduct/add_product.dart';
import 'package:upprog/View/Favoris/favoris_screene.dart';
import 'package:upprog/View/Home/home_view.dart';
import 'package:upprog/View/Pannier/screen_pannier.dart';
import 'package:upprog/const/list_data.dart';

class ControllerHome extends GetxController {
  var isStore = false.obs;
  @override
  void onInit() {
    chngeList(0);
    super.onInit();
  }

  // to control menu
  final drawerController = ZoomDrawerController();

  // In order to navigate between pages using  (Bottom Navigation)
  var listScreen = const [
    HomeView(),
    ScrennFavoris(),
    Scrennaddproduct(),
    ScreenPannier(),
  ].obs;

  RxList listCard = [].obs;

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
    print(listCard);

    listCard.removeAt(4);
    update();
  }

  var indextnavigator = 0.obs;
  indextnavigatorChng(indext) {
    indextnavigator.value = indext;
    update();
  }

  var indextbottonApp = 0.obs;
  indextbottonAppChng(indext) {
    indextbottonApp.value = indext;
    update();
  }
}
