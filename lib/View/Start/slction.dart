import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controller_settings.dart';
import 'package:upprog/View/Start/start_home.dart';
import 'package:upprog/const/colors.dart';

class Seelcion extends StatelessWidget {
  const Seelcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ff = Get.put(ControllerSettings(), permanent: true);
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: InkWell(
            onTap: () {
              Get.to(() => const StartHome());
            },
            child: Container(
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 20, color: amber, fontWeight: FontWeight.bold),
                ),
              ),
              height: 64,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                gradient: LinearGradient(
                  tileMode: TileMode.clamp,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF0F5086), Color(0xFF162463), blue],
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: amber,
              )),
          title: const Text(
            "Register",
            style: TextStyle(fontSize: 22, color: amber),
          ),
          elevation: 0,
          backgroundColor: blue,
        ),
        backgroundColor: blue,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "You are :",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GetX<ControllerSettings>(
                  init: ControllerSettings(),
                  builder: (controller) => SizedBox(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          onTap: () {
                            controller.statusbool(false);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  tileMode: TileMode.clamp,
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    amber,
                                    amber,
                                    amber,
                                    amber,
                                    amber,
                                    amber,
                                    controller.status.value == false
                                        ? amber.withOpacity(0.19)
                                        : amber,
                                  ],
                                ),
                                color: amber,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15))),
                            height: controller.status.value == true
                                ? MediaQuery.of(context).size.height * 0.40
                                : MediaQuery.of(context).size.height * 0.54,
                            width: MediaQuery.of(context).size.width * 0.44,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Spacer(),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.40,
                                  width:
                                      MediaQuery.of(context).size.width * 0.44,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/st1.png"),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                controller.status.value == false
                                    ? const Text(
                                        "Costumer",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: blue,
                                            fontWeight: FontWeight.bold),
                                      )
                                    : Container(),
                                controller.status.value == false
                                    ? const SizedBox(
                                        height: 40,
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          onTap: () {
                            controller.statusbool(true);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  tileMode: TileMode.clamp,
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    amber,
                                    amber,
                                    amber,
                                    amber,
                                    amber,
                                    amber,
                                    amber,
                                    controller.status.value == true
                                        ? amber.withOpacity(0.19)
                                        : amber,
                                  ],
                                ),
                                color: amber,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15))),
                            height: controller.status.value == false
                                ? MediaQuery.of(context).size.height * 0.40
                                : MediaQuery.of(context).size.height * 0.54,
                            width: MediaQuery.of(context).size.width * 0.44,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Spacer(),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  width:
                                      MediaQuery.of(context).size.width * 0.44,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/st2.png"),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                controller.status.value == true
                                    ? const Text(
                                        "Store",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: blue,
                                            fontWeight: FontWeight.bold),
                                      )
                                    : Container(),
                                controller.status.value == true
                                    ? const SizedBox(
                                        height: 30,
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
