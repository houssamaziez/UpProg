import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controllerhome.dart';
import 'package:upprog/View/widgets/widget_drawer.dart';

class StartHome extends StatelessWidget {
  const StartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DrawerZome(
        screen: GetX<ControllerHome>(
            init: ControllerHome(),
            builder: (controller) =>
                controller.listScreen[controller.indextbottonApp.value]),
      ),
    );
  }
}