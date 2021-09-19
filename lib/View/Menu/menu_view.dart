import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuView extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  MenuView({this.controller});
  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            onTap: () {
              print(controller.toggle());

              controller.toggle!();
            },
            child: const Icon(
              Icons.search,
              color: Color(0xFFF2C744),
              size: 25,
            ),
          ),
        ),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 20, right: 20),
          child: Text("Profil name"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              onTap: () {
                print(controller.toggle());

                controller.toggle!();
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('images/Ellipse.png'),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: const Color(0xFF1D1F54),
      ),
      backgroundColor: const Color(0xFF1D1F54),
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                height: 47,
              ),
              Text(
                "Profile",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                " Favoris",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "  Settings",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  " Sign out",
                  style: TextStyle(fontSize: 19, color: Color(0xFFF2C744)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}