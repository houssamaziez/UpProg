import 'package:flutter/material.dart';

/// ignore: must_be_immutable
class LoginButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String? title;
  final Color? textColor;
  final VoidCallback? onButtonTap;

  LoginButton({
    Key? key,
    this.height,
    this.width,
    this.title,
    this.textColor,
    this.onButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap ?? () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: height ?? 60.0,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              colors: [
                Color(0xFF1D1F54),
                Color(0xFF7D7EA8),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp),
          //border: Border.all(color: Colors.black)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title ?? 'Login',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor ?? Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
