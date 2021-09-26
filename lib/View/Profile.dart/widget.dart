import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controller_profile.dart';
import 'package:upprog/Controller/controllerhome.dart';
import 'package:upprog/const/colors.dart';

sizewidget({
  size,
  indext,
}) {
  return GetX<ControllerProfile>(
    init: ControllerProfile(),
    builder: (controller) => Expanded(
        child: InkWell(
      onTap: () {
        controller.indextsizeChng(indext);
      },
      child: Center(
        child: controller.indextsize.value == indext
            ? Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      blue,
                      Color(0xFF7D7EA8),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: blue,
                ),
                width: 43,
                height: 43,
                child: Center(
                    child: Text(size,
                        style: const TextStyle(color: Colors.white))))
            : Center(
                child: Text(size, style: const TextStyle(color: Colors.black))),
      ),
    )),
  );
}

pieceImage({context, image, pric, name}) {
  var ff = Get.put(ControllerHome());
  return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: blue,
              spreadRadius: 0.1,
              blurRadius: 5,
              offset: Offset(0, 0),
            )
          ],
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(40)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 30, bottom: 15),
          child: Align(
              alignment: Alignment.bottomRight,
              child: GetX<ControllerProfile>(
                init: ControllerProfile(),
                builder: (controller) => InkWell(
                  onTap: () {
                    if (controller.listfavorite.contains(image) == false) {
                      controller.chngfavorite(false);
                      controller.addTolistfavorite(image);
                      controller.addlistfav(
                          image: image, pric: pric, title: name);
                      Get.snackbar(
                        "Favorite",
                        "Added to favourites",
                        colorText: Colors.white,
                        icon: Container(
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                  image: AssetImage(
                                image,
                              ))),
                        ),
                        onTap: (cc) {
                          ff.indextbottonAppChng(3);
                          Get.back();
                        },
                      );
                    } else {
                      controller.chngfavorite(true);
                      controller.listfavorite.remove(image);
                      controller.listfav
                          .removeWhere((element) => element["image"] == image);
                      Get.snackbar(
                        "Favorite",
                        "remove from favourites",
                        colorText: Colors.white,
                        icon: Container(
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                  image: AssetImage(
                                image,
                              ))),
                        ),
                      );
                    }
                  },
                  child: Container(
                    child: Center(
                      child: controller.listfavorite.contains(image) == false
                          ? Image.asset(
                              "images/favoriteDSC.png",
                              height: 30,
                            )
                          : Image.asset(
                              "images/favoriteACT.png",
                              height: 35,
                            ),
                    ),
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: amber.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                ),
              )),
        ),
      ));
}

colorschng({color, indext}) {
  return Padding(
    padding: const EdgeInsets.only(left: 25),
    child: GetX<ControllerProfile>(
      init: ControllerProfile(),
      builder: (controller) => InkWell(
        onTap: () {
          controller.indextcolorChng(indext);
        },
        child: CircleAvatar(
          backgroundColor: controller.indextcolor.value == indext
              ? Colors.blue
              : const Color(0xFFEBEBEB),
          radius: 15,
          child: CircleAvatar(
            backgroundColor: color,
            radius: 12,
          ),
        ),
      ),
    ),
  );
}
