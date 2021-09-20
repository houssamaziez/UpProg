import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:upprog/Controller/controllerhome.dart';
import 'package:upprog/View/widgets/navigation_bar_widget.dart';
import 'package:upprog/View/widgets/widget_bottom_navigation.dart';
import 'package:upprog/View/widgets/widget_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  // final ZoomDrawerController drawercontroller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const NavifationBar(),
            const SizedBox(
              height: 10,
            ),
            GetX<ControllerHome>(
              init: ControllerHome(),
              builder: (constroller) => Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, //Number of columns you want
                            childAspectRatio: (1 /
                                1.4) //height & width for the GridTile(width / height)
                            ),
                    itemCount: constroller.listCard.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                        child: CardWidget(
                          image:
                              constroller.listCard[index]["image"].toString(),
                          title:
                              constroller.listCard[index]["title"].toString(),
                          prix: constroller.listCard[index]["prix"].toString(),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
        BottomNavigation()
      ],
    );
  }
}
