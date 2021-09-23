import 'package:get/get.dart';

class ControllerPannier extends GetxController {
  var listPannier = [].obs;

  addtolistPannier({
    price,
    title,
    image,
  }) {
    listPannier.add(
      {
        "title": "$title",
        "image": "$image",
        "prix": "$price ",
      },
    );
    print(listPannier[1]["title"].toString());
  }

  var indext = 0.obs;
  indextsizeChng(indext) {
    indext.value = indext;
    update();
  }
}
