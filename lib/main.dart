import 'package:flutter/material.dart';

import 'View/Home/home_view.dart';
import 'View/widgets/widget_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerZome(
        screen: HomeView(),
      ),
    );
  }
}
