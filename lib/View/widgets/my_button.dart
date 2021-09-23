import 'package:flutter/material.dart';
import 'package:upprog/const/colors.dart';

class Mybutton extends StatelessWidget {
  final Function;

  Mybutton(this.Function);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: InkWell(
          onTap: Function,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  blue,
                  Color(0xFF7D7EA8),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: blue,
            ),
            width: double.infinity,
            height: 57,
            child: const Center(
              child: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
