import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:upprog/Controller/controller_pannier.dart';

Padding Cardpannier({required String imeg, title, prix, indext}) {
  var ff = Get.put(ControllerPannier(), permanent: true);

  return Padding(
    padding: const EdgeInsets.only(left: 10, bottom: 30),
    child: SizedBox(
      height: 120,
      child: Row(
        children: [
          Container(
            width: 100,
            decoration: BoxDecoration(
                image:
                    DecorationImage(fit: BoxFit.cover, image: AssetImage(imeg)),
                color: Colors.grey,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 20.0, left: 20, top: 10.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Spacer(),
                      GetBuilder<ControllerPannier>(
                        init: ControllerPannier(),
                        builder: (controller) => IconButton(
                            onPressed: () {
                              controller.listPannier.removeAt(indext);
                              controller.minustotlapric(price: int.parse(prix));
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Black - Xl",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Text(
                          "\$$prix",
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
