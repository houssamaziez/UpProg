import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controllerhome.dart';
import 'package:upprog/View/Auth/login_screen.dart';
import 'package:upprog/View/Settings/screen_settings.dart';
import 'package:upprog/View/Start/start_home.dart';

class MenuView extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  MenuView({Key? key, this.controller}) : super(key: key);
  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    var ff = Get.put(ControllerHome());

    return GetBuilder<ControllerHome>(
      init: ControllerHome(),
      builder: (controllser) => WillPopScope(
        onWillPop: () {
          return controllser.indextbottonAppChng(0);
        },
        child: Scaffold(
          appBar: AppBar(
            leading: GetX<ControllerHome>(
              init: ControllerHome(),
              builder: (controllr) => Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  onTap: () {
                    controllr.indextbottonAppChng(0);
                  },
                  child: Icon(
                    controllr.indextbottonApp.value == 3
                        ? Icons.arrow_back_ios
                        : Icons.search,
                    color: const Color(0xFFF2C744),
                    size: 25,
                  ),
                ),
              ),
            ),
            centerTitle: true,
            title: const Padding(
              padding: EdgeInsets.only(top: 20, right: 20),
              child: Text("Profil name"),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20),
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  onTap: () {
                    controller.toggle!();
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/Ellipse.png'),
                  ),
                ),
              ),
            ],
            elevation: 0,
            backgroundColor: const Color(0xFF1D1F54),
          ),
          backgroundColor: const Color(0xFF1D1F54),
          body: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 47,
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    child: const SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "  Favoris",
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      controller.toggle!();

                      Timer(const Duration(milliseconds: 350), () {
                        ff.indextbottonAppChng(1);

                        Get.to(const StartHome());
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: const SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "  Settings",
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      controller.toggle!();

                      Timer(const Duration(milliseconds: 350), () {
                        Get.to(Settings(controllser));
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(
                      child: Container(
                        height: 50,
                        child: const Center(
                          child: Text(
                            " Sign out",
                            style: TextStyle(
                                fontSize: 19, color: Color(0xFFF2C744)),
                          ),
                        ),
                      ),
                      onTap: () {
                        controller.toggle!();
                        Timer(const Duration(milliseconds: 350), () {
                          Get.offAll(LoginScreen());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
