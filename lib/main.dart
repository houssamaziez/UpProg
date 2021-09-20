import 'package:flutter/material.dart';

import 'View/Home/home_view.dart';
import 'View/widgets/widget_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //just call DrawerZome (screen )
      home: DrawerZome(
        screen: HomeView(),
      ),
    );
  }
}
