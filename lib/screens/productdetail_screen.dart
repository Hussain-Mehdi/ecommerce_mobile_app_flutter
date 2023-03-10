import 'package:ecommerce_mobile_app_flutter/screens/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/product_model.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail(this.productID);
  int productID;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          products()[widget.productID].productImage))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.red,
                      ),
                      Text("8 Reviews",
                          style: TextStyle(
                              color: Color.fromARGB(181, 0, 0, 0),
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Text("34 Stock",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 40, 10),
            child: Text(
              products()[widget.productID].productDescription,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 70, 70, 70)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Text(
              "\$${products()[widget.productID].productPrice}",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 20, 20, 20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              "Colors",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 41, 41, 41)),
            ),
          ),
          Row(children: createColors()),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              "Size",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 41, 41, 41)),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: createSize(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(171, 206, 206, 206)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                InkWell(
                  onTap: () {
                    addtoCart().add(products()[widget.productID]);
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (liked) {
                          liked = false;
                        } else {
                          liked = true;
                        }
                      });
                    },
                    icon: liked
                        ? ImageIcon(AssetImage("./images/heartfill.png"))
                        : ImageIcon(AssetImage("./images/heart.png"))),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createColors() {
    List<Widget> colorsIcons = [];
    List<Color> colorList = [
      Colors.red,
      Colors.amber,
      Colors.green,
      Colors.yellow,
      Colors.limeAccent
    ];
    int i = 0;
    while (i < 5) {
      Padding c = Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: colorList[i]),
        ),
      );
      colorsIcons.add(c);
      i++;
    }
    return colorsIcons;
  }

  List<Widget> createSize() {
    List<Widget> sizeItem = [];
    List<String> sizeList = [
      'XXS',
      'XS',
      'S',
      'M',
      'L',
      'XL',
      'XXL',
    ];
    int i = 0;
    while (i < sizeList.length) {
      Padding c = Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(69, 177, 177, 177)),
          child: Center(
            child: Text(sizeList[i]),
          ),
        ),
      );
      sizeItem.add(c);
      i++;
    }
    return sizeItem;
  }
}
