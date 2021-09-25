import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/colloction_start.dart';
import 'package:upprog/const/colors.dart';

class SreenStart extends StatelessWidget {
  const SreenStart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var ff = Get.put(ControllerStart());

    return Scaffold(
      backgroundColor: blue,
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 58.0, color: amber, fontWeight: FontWeight.bold),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('LOGO'),
            ],
            isRepeatingAnimation: true,
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
