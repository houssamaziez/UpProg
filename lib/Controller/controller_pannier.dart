import 'package:get/get.dart';

class ControllerPannier extends GetxController {
  var listPannier = [].obs;
  var prictotal = 0.obs;
  addtotlapric({required int price}) {
    if (prictotal.value >= 0) {
      prictotal.value = prictotal.value + price;
      update();
    }
  }

  minustotlapric({required int price}) {
    if (prictotal.value > 0) {
      prictotal.value = prictotal.value - price;

      update();
    }
  }

  addtolistPannier({
    price,
    title,
    image,
  }) {
    listPannier.add(
      {
        "title": "$title",
        "image": "$image",
        "prix": price,
      },
    );
  }

  var listprix = 1.obs;
  otal() {
    for (var i = 0; i < listPannier.length; i++) {}
  }

  var indext = 1.obs;
  indextsizeChng(indext) {
    indext.value = indext;
    update();
  }
}
