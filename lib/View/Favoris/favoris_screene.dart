import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:upprog/Controller/controller_profile.dart';
import 'package:upprog/View/Profile.dart/produit_profile.dart';
import 'package:upprog/View/widgets/widget_bottom_navigation.dart';
import 'package:upprog/const/colors.dart';

class ScrennFavoris extends StatelessWidget {
  const ScrennFavoris({Key? key}) : super(key: key);

  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    var ff = Get.put(ControllerProfile(), permanent: true);

    return Stack(
      children: [
        GetX<ControllerProfile>(
          init: ControllerProfile(),
          builder: (controller) => Padding(
            padding: const EdgeInsets.only(top: 20, left: 8.0, right: 8.0),
            child: controller.listfav.length != 0
                ? GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, //Number of columns you want
                            childAspectRatio: (1 /
                                1.4) //height & width for the GridTile(width / height)
                            ),
                    itemCount: controller.listfav.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 8, right: 8),
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() => ProduitProfile(
                                      image: controller.listfav[index]["image"],
                                      title: controller.listfav[index]["title"],
                                      price: controller.listfav[index]["pric"],
                                      list: controller.listfav[index],
                                    ));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 300,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(controller
                                                    .listfav[index]["image"]))),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        controller.listfav[index]["title"],
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {
                                    controller.listfav.removeWhere((element) =>
                                        element["image"] ==
                                        controller.listfav[index]["image"]);
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 35,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  )
                : Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/addfavor.png"))),
                      ),
                    ),
                  ),
          ),
        ),
        BottomNavigation()
      ],
    );
  }
}
