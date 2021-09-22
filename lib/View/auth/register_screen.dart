import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/View/auth/authentication_screen.dart';
import 'package:upprog/View/auth/login_screen.dart';
import 'package:upprog/View/widgets/login_button.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _workplaceController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _workplaceFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  bool _obscureText = true;

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _phoneFocusNode.dispose();
    _workplaceFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

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
                          Get.to(() => LoginScreen());
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
                SizedBox(height: 100),
                Material(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _emailController,
                              validator: (value) {
                                if (value!.isEmpty || !value.contains("@")) {
                                  return "Please enter a valid email address";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => FocusScope.of(context)
                                  .requestFocus(_nameFocusNode),
                              cursorColor: Colors.grey,
                              cursorHeight: 25.0,
                              decoration: InputDecoration(
                                labelText: "Email :",
                                labelStyle: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _nameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Name can't be null";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.name,
                              focusNode: _nameFocusNode,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => FocusScope.of(context)
                                  .requestFocus(_phoneFocusNode),
                              cursorColor: Colors.grey,
                              cursorHeight: 25.0,
                              decoration: InputDecoration(
                                labelText: "Full name :",
                                labelStyle: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _phoneController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter a valid phone number";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.phone,
                              focusNode: _phoneFocusNode,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => FocusScope.of(context)
                                  .requestFocus(_workplaceFocusNode),
                              cursorColor: Colors.grey,
                              cursorHeight: 25.0,
                              decoration: InputDecoration(
                                labelText: "Phone :",
                                labelStyle: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _workplaceController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter your address";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.streetAddress,
                              focusNode: _workplaceFocusNode,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => FocusScope.of(context)
                                  .requestFocus(_passwordFocusNode),
                              cursorColor: Colors.grey,
                              cursorHeight: 25.0,
                              decoration: InputDecoration(
                                labelText: "Workplace :",
                                labelStyle: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              validator: (value) {
                                if (value!.isEmpty || value.length < 8) {
                                  return ("Please enter a valid password");
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              focusNode: _passwordFocusNode,
                              onEditingComplete: _submiteForm,
                              cursorColor: Colors.grey,
                              cursorHeight: 25.0,
                              decoration: InputDecoration(
                                labelText: "Password :",
                                labelStyle: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              obscureText: _obscureText,
                            ),
                            SizedBox(height: 50),
                            LoginButton(
                              title: "Next",
                              onButtonTap: () {
                                _submiteForm();
                                if (_formkey.currentState!.validate()) {
                                  print("Email: ${_emailController.text}");
                                  print("Name: ${_nameController.text}");
                                  print("Phone: ${_phoneController.text}");
                                  print(
                                      "Workplace: ${_workplaceController.text}");
                                  print(
                                      "Password: ${_passwordController.text}");
                                  Get.to(() => Authenticationscreen());
                                }
                              },
                            ),
                            SizedBox(height: 60),
                          ]),
                    ),
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
