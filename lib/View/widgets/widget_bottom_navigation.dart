import 'package:flutter/material.dart';
import 'package:upprog/const/colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: 59,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(38)),
              boxShadow: [
                BoxShadow(
                  color: amber.withOpacity(0.8),
                  spreadRadius: -4,
                  blurRadius: 60,
                  offset: const Offset(0, 50),
                )
              ],
              color: blue.withOpacity(0.8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button("images/iconhome.png"),
              button("images/Vector.png"),
              button("images/corbeille.png"),
            ],
          ),
        ),
      ),
    );
  }
}

var listbutton = [];

button(image) {
  return Expanded(
      child: Container(
    height: 59,
    child: Center(child: Image.asset(image)),
  ));
}
