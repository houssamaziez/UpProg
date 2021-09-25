import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controller_pannier.dart';
import 'package:upprog/Controller/controller_settings.dart';
import 'package:upprog/Controller/controllerhome.dart';
import 'package:upprog/const/colors.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  var ff = Get.put(ControllerPannier(), permanent: true);

  _button({image, indext = 0}) {
    return GetBuilder<ControllerHome>(
      init: ControllerHome(),
      builder: (controller) => Expanded(
        child: InkWell(
          onTap: () {
            controller.indextbottonAppChng(indext);
          },
          child: SizedBox(
            height: 55,
            child: Center(
                child: Stack(
              children: [
                indext == 3
                    ? GetX<ControllerPannier>(
                        init: ControllerPannier(),
                        builder: (control) => Padding(
                          padding: const EdgeInsets.only(right: 24, top: 5),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: control.listPannier.length == 0
                                  ? Colors.transparent
                                  : Colors.red,
                              child: Text(
                                control.listPannier.length.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: control.listPannier.length == 0
                                      ? Colors.transparent
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
                Align(alignment: Alignment.center, child: Image.asset(image)),
              ],
            )),
          ),
        ),
      ),
    );
  }

  // ignore: prefer_const_constructors_in_immutables
  BottomNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var ff = Get.put(ControllerSettings(), permanent: true);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GetX<ControllerHome>(
          init: ControllerHome(),
          builder: (controller) => Container(
            width: MediaQuery.of(context).size.width *
                (controller.isStore.value ? 0.8 : 0.6),
            height: 55,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(38)),
                boxShadow: [
                  BoxShadow(
                    color: amber.withOpacity(0.8),
                    spreadRadius: -4,
                    blurRadius: 60,
                    offset: const Offset(0, 50),
                  )
                ],
                color: blue.withOpacity(0.8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _button(
                  indext: 0,
                  image: controller.indextbottonApp.value == 0
                      ? "images/iconhome.png"
                      : "images/homew.png",
                ),
                _button(
                  indext: 1,
                  image: controller.indextbottonApp.value == 1
                      ? "images/d.png"
                      : "images/dw.png",
                ),
                GetX<ControllerSettings>(
                  init: ControllerSettings(),
                  builder: (cn) => cn.status.value
                      ? _button(
                          indext: 2,
                          image: controller.indextbottonApp.value == 2
                              ? "images/Vector.png"
                              : "images/Vectorw.png",
                        )
                      : Container(),
                ),
                _button(
                  indext: 3,
                  image: controller.indextbottonApp.value == 3
                      ? "images/corbeille.png"
                      : "images/corbeillew.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
