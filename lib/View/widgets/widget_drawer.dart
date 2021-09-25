import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controller_drawer.dart';
import 'package:upprog/View/Menu/menu_view.dart';

class DrawerZome extends StatelessWidget {
  final controller = Get.put(ControllerDrawer());
  // ignore: prefer_typing_uninitialized_variables
  final screen;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  DrawerZome({this.screen});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: controller.drawerController,
      menuScreen: MenuView(
        controller: controller.drawerController,
      ),
      style: DrawerStyle.Style2,
      mainScreen: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Material(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          child: screen,
        ),
      ),
      borderRadius: 24.0,
      showShadow: true,
      angle: -12.0,
      backgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * -.50,
    );
  }
}
