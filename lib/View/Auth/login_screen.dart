import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upprog/View/HomeScreen.dart';
import 'package:upprog/View/Start/slction.dart';
import 'package:upprog/View/auth/register_screen.dart';
import 'package:upprog/View/auth/widgets/login_button.dart';

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
                  children: const [
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
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 15.0, right: 25.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
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
                              decoration: const InputDecoration(
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
                            const SizedBox(height: 20),
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
                                labelStyle: const TextStyle(
                                    fontSize: 20, color: Colors.black),
                                focusedBorder: const UnderlineInputBorder(
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
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "I forgot the password",
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            LoginButton(
                              height: 55.0,
                              title: "Login",
                              onButtonTap: () {
                                _submiteForm();
                                if (_formkey.currentState!.validate()) {
                                  print("Email: ${_emailController.text}");
                                  print(
                                      "Password: ${_passwordController.text}");
                                  Get.offAll(const Seelcion());
                                }
                              },
                            ),
                            const SizedBox(height: 30.0),
                            TextButton(
                              onPressed: () {
                                Get.to(() => RegisterScreen());
                              },
                              child: const Text(
                                "Create a new account",
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: const [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      thickness: 1.2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(7),
                                  child: Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/google_png.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 25),
                                InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(7),
                                  child: Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: const BoxDecoration(
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
                            const SizedBox(
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
