import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:upprog/View/auth/login_screen.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _initialize();
    return Scaffold(
      backgroundColor: Color(0xFF1D1F54),
      body: Center(
        child: SizedBox(
          width: Get.width * 0.5,
          child:Center(
            child: Text( 
              "Logo",
              style: TextStyle(
                color: Color(0xFFF2C744),
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _initialize() async {
    await Future.delayed(Duration(seconds: 1));
    Get.to(LoginScreen());
  } 
    
}
