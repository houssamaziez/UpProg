import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:upprog/View/widgets/navigation_bar_widget.dart';
import 'package:upprog/View/widgets/widget_card.dart';
import 'package:upprog/const/list_data.dart';

class HomeView extends StatelessWidget {
  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NavifationBar(),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, //Number of columns you want
                  childAspectRatio: (1 /
                      1.4) //height & width for the GridTile(width / height)
                  ),
              itemCount: list_Data.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                  child: CardWidget(
                    image: list_Data[index]["image"].toString(),
                    title: list_Data[index]["title"].toString(),
                    prix: list_Data[index]["prix"].toString(),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
