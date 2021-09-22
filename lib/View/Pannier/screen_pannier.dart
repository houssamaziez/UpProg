import 'package:flutter/material.dart';
import 'package:upprog/View/widgets/widget_bottom_navigation.dart';

class ScreenPannier extends StatelessWidget {
  const ScreenPannier({Key? key}) : super(key: key);

  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 8.0, right: 8.0),
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, indext) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 30),
                  child: Container(
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          decoration: const BoxDecoration(
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
                                  const Text(
                                    "Ejzfn nfjzen zenf",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Black - Xl",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                      children: const [
                                        Text(
                                          "\$150",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        CircleAvatar(
                                          radius: 12,
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "0",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          radius: 12,
                                          child: Text(
                                            "+",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
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
              }),
        ),
        BottomNavigation()
      ],
    );
  }
}
