import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controller_profile.dart';
import 'package:upprog/const/colors.dart';

class ProduitProfile extends StatelessWidget {
  final image, title, price;

  const ProduitProfile({Key? key, this.image, this.title, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          Column(
            children: [
              //  image spcace
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(image)),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: amber,
                                    size: 30,
                                  )),
                              const Spacer(),
                              SizedBox(
                                height: 59,
                                child: Center(
                                    child: Image.asset("images/corbeille.png")),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //   detial space
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: const Color(0xFFFFFFFF),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          '\$$price',
                          style: const TextStyle(
                              fontSize: 25, color: Colors.black),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Colour',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          colorschng(color: Colors.white, indext: 0),
                          colorschng(color: Colors.red, indext: 1),
                          colorschng(color: Colors.black, indext: 2),
                          colorschng(color: Colors.green, indext: 3),
                          colorschng(color: Colors.grey, indext: 4),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          'the offer :',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          'A bag for trips and tourist adventures, made of hard, waterproof leather.',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: blue,
                ),
                width: double.infinity,
                height: 57,
                child: const Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding colorschng({color, indext}) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: GetX<ControllerProfile>(
        init: ControllerProfile(),
        builder: (controller) => InkWell(
          onTap: () {
            controller.indextcolorChng(indext);
          },
          child: CircleAvatar(
            backgroundColor: controller.indextcolor.value == indext
                ? Colors.blue
                : const Color(0xFFEBEBEB),
            radius: 15,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 12,
            ),
          ),
        ),
      ),
    );
  }
}
