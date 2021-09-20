import 'package:flutter/material.dart';
import 'package:upprog/View/widgets/widget_bottom_navigation.dart';

class ScreenPannier extends StatelessWidget {
  const ScreenPannier({Key? key}) : super(key: key);

  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: Text(
            "ScreenPannier",
            style: TextStyle(fontSize: 50),
          ),
        ),
        BottomNavigation()
      ],
    );
  }
}
