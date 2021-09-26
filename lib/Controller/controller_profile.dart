import 'package:get/get.dart';

class ControllerProfile extends GetxController {
  var listfavorite = [].obs;
  var listfav = [].obs;
  addTolistfavorite(item) {
    listfavorite.add(item);
    update();
  }

  addlistfav({image, pric, title}) {
    listfav.add({
      "image": image,
      "pric": pric,
      "title": title,
    });
  }

  var isfavorite = false.obs;
  chngfavorite(isfav) {
    isfavorite.value = isfav;
  }

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
