import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:upprog/Controller/controller_pannier.dart';

Padding Cardpannier({required String imeg, title, prix, indext}) {
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
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        GetBuilder<ControllerPannier>(
                          builder: (controller) => IconButton(
                              onPressed: () {
                                controller.listPannier.removeAt(indext);
                              },
                              icon: Icon(Icons.delete)),
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
                          InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              radius: 12,
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              radius: 12,
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
