import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:upprog/View/Profile.dart/produit_profile.dart';

class CardWidget extends StatelessWidget {
  final String image, title, price;
  final list;

  const CardWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(list);
        print("dddddddddddddddddddddddddddddddddddddddddd");
        Get.to(() => ProduitProfile(
              image: image,
              title: title,
              price: price,
              list: list,
            ));
      },
      child: Container(
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
                      const Spacer(),
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        price,
                        style: const TextStyle(fontSize: 13),
                      ),
                      const Spacer(),
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
      ),
    );
  }
}
