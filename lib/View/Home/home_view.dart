import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeView extends StatelessWidget {
  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: DefaultTextStyle(
                    style: const TextStyle(fontSize: 20.0, color: Colors.black),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        WavyAnimatedText('Hello World'),
                      ],
                      isRepeatingAnimation: true,
                    ),
                  ),
                )))
      ],
    );
  }
}
