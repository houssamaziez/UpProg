import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:upprog/Controller/controllerhome.dart';

class NavifationBar extends StatelessWidget {
  const NavifationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 40, left: 40),
      child: Container(
        height: 38,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: Color(0xFFD1D1D4),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 3,
            ),
            button(indext: 0, title: "All"),
            const SizedBox(
              width: 3,
            ),
            button(indext: 1, title: "Recent"),
            const SizedBox(
              width: 3,
            ),
            button(indext: 2, title: "Popolar"),
            const SizedBox(
              width: 3,
            ),
          ],
        ),
      ),
    );
  }

  button({indext, title}) {
    return Expanded(
      child: GetBuilder<ControllerHome>(
        init: ControllerHome(),
        builder: (contrlb) => InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          onTap: () {
            contrlb.indextnavigatorChng(indext);
            contrlb.chngeList(indext);
          },
          child: GetX<ControllerHome>(
            init: ControllerHome(),
            builder: (controller) => Container(
              height: 38,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius:
                        controller.indextnavigator.value == indext ? 0.5 : 0,
                    blurRadius:
                        controller.indextnavigator.value == indext ? 7 : 0,
                    offset: controller.indextnavigator.value == indext
                        ? const Offset(0, 3)
                        : const Offset(0, 0),
                  )
                ],
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                color: controller.indextnavigator.value == indext
                    ? Colors.white
                    : const Color(0xFFD1D1D4),
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
