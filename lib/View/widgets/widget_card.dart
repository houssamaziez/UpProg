import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardWidget extends StatelessWidget {
  String image, title, prix;
  CardWidget(
      {Key? key, required this.image, required this.title, required this.prix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 15),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: Colors.white.withOpacity(0.6),
                ),
                height: 53,
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      prix,
                      style: const TextStyle(fontSize: 13),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            )),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Colors.transparent,
      ),
    );
  }
}
