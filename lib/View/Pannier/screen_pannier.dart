import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controller_pannier.dart';
import 'package:upprog/Controller/controllerhome.dart';
import 'package:upprog/View/Pannier/widget_pannier.dart';
import 'package:upprog/View/widgets/my_button.dart';
import 'package:upprog/View/widgets/widget_bottom_navigation.dart';

class ScreenPannier extends StatelessWidget {
  const ScreenPannier({Key? key}) : super(key: key);

  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var ff = Get.put(ControllerPannier(), permanent: true);
    return Stack(
      children: [
        GetX<ControllerPannier>(
          init: ControllerPannier(),
          builder: (controller) => Padding(
            padding: const EdgeInsets.only(top: 25, left: 8.0, right: 8.0),
            child: controller.listPannier.length != 0
                ? Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: controller.listPannier.length,
                            itemBuilder: (context, indext) {
                              return Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Cardpannier(
                                      imeg: controller.listPannier[indext]
                                              ["image"]
                                          .toString(),
                                      prix: controller.listPannier[indext]
                                              ["prix"]
                                          .toString(),
                                      title: controller.listPannier[indext]
                                              ["title"]
                                          .toString(),
                                      indext: indext),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 35,
                                        right: 35,
                                        bottom: 10,
                                        top: 10),
                                    child: Divider(
                                      height: 1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  )
                : Column(
                    children: [
                      Spacer(),
                      Center(
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/emptycart.png"))),
                        ),
                      ),
                      Spacer(),
                      Spacer(),
                      Spacer(),
                    ],
                  ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: GetX<ControllerHome>(
              init: ControllerHome(),
              builder: (controller) => controller.indextbottonApp.value == 3
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 0.5,
                            blurRadius: 15,
                            offset: const Offset(0, -3),
                          )
                        ],
                      ),
                      width: double.infinity,
                      height: 140,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 32, left: 32, top: 20),
                            child: Row(
                              children: [
                                const Text(
                                  'Total :',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                GetX<ControllerPannier>(
                                  init: ControllerPannier(),
                                  builder: (c) => Text(
                                    "\$${c.prictotal}",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          GetBuilder<ControllerPannier>(
                            init: ControllerPannier(),
                            builder: (contr) => Mybutton(() {}),
                          ),
                        ],
                      ))
                  : BottomNavigation()),
        )
      ],
    );
  }
}
