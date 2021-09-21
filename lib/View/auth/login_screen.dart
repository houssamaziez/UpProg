import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/View/HomeScreen.dart';
import 'package:upprog/View/auth/register_screen.dart';
import 'package:upprog/View/login_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final FocusNode _passwordFocusNode = FocusNode();
  bool _obscureText = true;

  @override
  void dispose() {
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF2C744),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                SingleChildScrollView(
                  child: Material(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 15.0, right: 25.0),
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
                                  .requestFocus(_passwordFocusNode),
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
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              obscureText: _obscureText,
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "I forgot the password",
                                  
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            MaterialButton(
                              onPressed: () {
                                _submiteForm();
                                if (_formkey.currentState!.validate()) {
                                  print("Email: ${_emailController.text}");
                                  print(
                                      "Password: ${_passwordController.text}");
                                  Get.to(() => HomeScreen());
                                }
                              },
                              height: 60,
                              minWidth: double.infinity,
                              color: Color(0xFF1D1F54),
                              textColor: Color(0xFFF2C744),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            
                            TextButton(
                              onPressed: () {
                                Get.to(() => RegisterScreen());
                              },
                              child: Text(
                                "Create a new account",
                                
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      thickness: 1.2,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Or continue with",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      thickness: 1.2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(7),
                                  child: Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/google_png.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25),
                                InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(7),
                                  child: Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/facebook_png.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                            )
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
