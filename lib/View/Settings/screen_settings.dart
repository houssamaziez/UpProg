import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controller_pannier.dart';
import 'package:upprog/Controller/controller_settings.dart';
import 'package:upprog/Controller/controllerhome.dart';
import 'package:upprog/const/colors.dart';

// ignore: must_be_immutable
class Settings extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final drawercontroller;
  var controllser = Get.put(ControllerHome(), permanent: true);

  Settings(indextbottonAppChng, {Key? key, this.drawercontroller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blue,
        actions: [
          SizedBox(
            height: 59,
            child: Center(
                child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              onTap: () {
                controllser.indextbottonAppChng(3);
                Get.back();
              },
              child: Stack(
                children: [
                  GetX<ControllerPannier>(
                    init: ControllerPannier(),
                    builder: (control) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: control.listPannier.isEmpty
                              ? Colors.transparent
                              : Colors.red,
                          child: Text(
                            control.listPannier.length.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: control.listPannier.isEmpty
                                  ? Colors.transparent
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset("images/corbeille.png")),
                ],
              ),
            )),
          ),
          const SizedBox(
            width: 40,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {
                Get.back();
                controllser.onClose();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: amber,
                size: 24,
              )),
        ),
      ),
      body: Center(
        child: GetX<ControllerSettings>(
          init: ControllerSettings(),
          builder: (controllerrr) => SizedBox(
            width: 200,
            height: 200,
            child: FlutterSwitch(
              activeIcon: const Icon(
                Icons.person_outline,
              ),
              activeText: "Store ",
              inactiveText: "Costumer",
              inactiveIcon: const Icon(
                Icons.store,
              ),
              width: 400.0,
              height: 55.0,
              valueFontSize: 25.0,
              toggleSize: 45.0,
              value: controllerrr.status.value,
              borderRadius: 30.0,
              padding: 8.0,
              showOnOff: true,
              onToggle: (val) {
                controllerrr.statusbool(val);
              },
            ),
          ),
        ),
      ),
    );
  }
}
