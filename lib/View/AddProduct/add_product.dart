import 'package:flutter/material.dart';
import 'package:upprog/View/widgets/widget_bottom_navigation.dart';

class Scrennaddproduct extends StatelessWidget {
  const Scrennaddproduct({Key? key}) : super(key: key);

  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: Text(
            " add product",
            style: TextStyle(fontSize: 50),
          ),
        ),
        BottomNavigation()
      ],
    );
  }
}
