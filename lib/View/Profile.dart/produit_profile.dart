import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:upprog/Controller/controller_pannier.dart';
import 'package:upprog/Controller/controllerhome.dart';
import 'package:upprog/View/Profile.dart/widget.dart';
import 'package:upprog/View/widgets/my_button.dart';
import 'package:upprog/const/colors.dart';

class ProduitProfile extends StatelessWidget {
  final image, title, price;
  final list;
  var ff = Get.put(ControllerPannier(), permanent: true);
  var controllser = Get.put(ControllerHome(), permanent: true);
  ProduitProfile({Key? key, this.image, this.title, this.price, this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blue,
        actions: [
          SizedBox(
            height: 59,
            child: Center(
                child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              onTap: () {
                controllser.indextbottonAppChng(3);
                Get.back();
              },
              child: Stack(
                children: [
                  GetX<ControllerPannier>(
                    init: ControllerPannier(),
                    builder: (control) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: control.listPannier.length == 0
                              ? Colors.transparent
                              : Colors.red,
                          child: Text(
                            control.listPannier.length.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: control.listPannier.length == 0
                                  ? Colors.transparent
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset("images/corbeille.png")),
                ],
              ),
            )),
          ),
          const SizedBox(
            width: 40,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: amber,
                size: 24,
              )),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            width: double.infinity,
            child: ListView(
              children: [
                pieceImage(image: image, context: context),
                piecedetail(),
              ],
            ),
          ),
          //  botton add
          GetBuilder<ControllerHome>(
            builder: (controllerHome) => GetBuilder<ControllerPannier>(
              builder: (controllerPannier) => Mybutton(() {
                controllerHome.indextbottonAppChng(3);
                Get.back();
                controllerPannier.addtolistPannier(
                  image: image,
                  title: title,
                  price: price,
                );
                controllerPannier.addtotlapric(price: int.parse(price));
              }),
            ),
          )
        ],
      ),
    );
  }

  Container piecedetail() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      alignment: Alignment.topLeft,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  text title
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 0),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),

//  text prix
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              '\$$price',
              style: const TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
//  chng color

          const Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text(
              'Colour',
              style: TextStyle(fontSize: 17, color: Colors.black),
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

          // chng Size

          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Size',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30.0),
            child: Container(
              width: double.infinity,
              height: 40,
              color: Color(0xFFC1C1C2),
              child: Row(
                children: [
                  sizewidget(size: "S", indext: 0),
                  sizewidget(size: "M", indext: 1),
                  sizewidget(size: "L", indext: 2),
                  sizewidget(size: "XL", indext: 3),
                  sizewidget(size: "XXL", indext: 4),
                ],
              ),
            ),
          ),
          // the offer
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
              'A bag for trips and tourist adventures, made of hard, waterproof leather.A bag for trips and tourist adventures, made of hard, waterproof leather.',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}
