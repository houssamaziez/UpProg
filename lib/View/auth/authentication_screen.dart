import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/View/HomeScreen.dart';
import 'package:upprog/View/widgets/login_button.dart';

class Authenticationscreen extends StatefulWidget {
  @override
  _AuthenticationscreenState createState() => _AuthenticationscreenState();
}

class _AuthenticationscreenState extends State<Authenticationscreen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _codeController = TextEditingController();

  void _submiteForm() {
    final isValid = _formkey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formkey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1F54),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(height: 60),
                Row(
                  children: [
                    SizedBox(width: 7),
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios,
                            color: Color(0xFFF2C744)),
                        onPressed: () {
                          Get.back();
                        }),
                    SizedBox(width: 90),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Register",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF2C744),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Center(
                  child: Text(
                    "You will receive a confirmation code via SMS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Material(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          TextFormField(
                            controller: _codeController,
                            validator: (value) {
                              if (value!.length != 6) {
                                return "Code must have 6 digits";
                              }
                              return null;
                            },
                            maxLength: 6,
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.done,
                            onEditingComplete: _submiteForm,
                            cursorColor: Colors.grey,
                            cursorHeight: 25.0,
                            decoration: InputDecoration(
                              labelText: "Enter the code :",
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          LoginButton(
                            title: "Next",
                            onButtonTap: () {
                              _submiteForm();
                              if (_formkey.currentState!.validate()) {
                                print("otp code: ${_codeController.text}");
                                Get.to(() => HomeScreen());
                              }
                            },
                          ),
                          SizedBox(
                            height: 360,
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
