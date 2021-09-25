import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:upprog/View/widgets/widget_bottom_navigation.dart';
import 'package:upprog/const/colors.dart';

class Scrennaddproduct extends StatelessWidget {
  const Scrennaddproduct({Key? key}) : super(key: key);

  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 170,
          left: 100,
          right: 100,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(13)),
              boxShadow: [
                BoxShadow(
                  color: blue.withOpacity(0.3),
                  spreadRadius: -2,
                  blurRadius: 5,
                  offset: const Offset(3, 3),
                )
              ],
            ),
            width: 190,
            height: 85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Spacer(),
                Text(
                  "Upload picturs",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: blue),
                ),
                SizedBox(
                  height: 5,
                ),
                Icon(Icons.upload_sharp, color: blue),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        BottomNavigation()
      ],
    );
  }
}
