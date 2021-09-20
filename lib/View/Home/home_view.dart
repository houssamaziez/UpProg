import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:upprog/View/widgets/navigation_bar_widget.dart';

class HomeView extends StatelessWidget {
  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        NavifationBar(),
      ],
    );
  }
}
