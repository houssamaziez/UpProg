import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controller_profile.dart';
import 'package:upprog/const/colors.dart';

sizewidget({size, indext}) {
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

pieceImage({image}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      height: 370,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.03,
              blurRadius: 10,
              offset: Offset(0, 8),
            )
          ],
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    ),
  );
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
