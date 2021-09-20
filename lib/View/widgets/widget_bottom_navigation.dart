import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controllerhome.dart';
import 'package:upprog/const/colors.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: 59,
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
          child: GetX<ControllerHome>(
            init: ControllerHome(),
            builder: (controllerbtton) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button(
                  indext: 0,
                  image: controllerbtton.indextbottonApp.value == 0
                      ? "images/iconhome.png"
                      : "images/homew.png",
                ),
                button(
                  indext: 1,
                  image: controllerbtton.indextbottonApp.value == 1
                      ? "images/d.png"
                      : "images/dw.png",
                ),
                button(
                  indext: 2,
                  image: controllerbtton.indextbottonApp.value == 2
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

var listbutton = [];
button({image, indext = 0}) {
  return GetBuilder<ControllerHome>(
    init: ControllerHome(),
    builder: (controller) => Expanded(
        child: InkWell(
      onTap: () {
        controller.indextbottonAppChng(indext);
        print(controller.indextbottonApp);
      },
      child: SizedBox(
        height: 59,
        child: Center(child: Image.asset(image)),
      ),
    )),
  );
}
