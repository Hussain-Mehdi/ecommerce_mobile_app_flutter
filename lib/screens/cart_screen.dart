import 'package:flutter/material.dart';

import '../models/product_model.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  @override
  int quantity = 0;
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 120,
            child: Stack(children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff3c2e48),
                    Color.fromARGB(255, 107, 71, 138)
                  ]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 20,
                          )),
                      Text("Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Delete",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ])),
        Expanded(
            child: Container(
          child: ListView(
            padding: EdgeInsets.only(top: 5),
            children: createCatalogueList(),
          ),
        ))
      ],
    ));
  }

  List<Widget> createCatalogueList() {
    List<Widget> catalogueCards = [];

    int i = 0;
    while (i < 7) {
      Padding catalogueCard = Padding(
          padding:
              const EdgeInsets.only(left: 10.0, right: 10, top: 0, bottom: 12),
          child: Container(
            height: 90,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(14, 0, 0, 0),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(2, 2))
            ], borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(products()[i].productImage))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 10),
                  child: Container(
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products()[i].productName,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(228, 56, 56, 56)),
                        ),
                        // Text(
                        //   catalogueData[i + 13],
                        //   style: TextStyle(
                        //       fontSize: 12,
                        //       fontWeight: FontWeight.w700,
                        //       color: Color.fromARGB(255, 56, 56, 56)),
                        // ),
                        Text(
                          products()[i].productDescription,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 56, 56, 56)),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 18,
                      ),
                    ),
                    Text(quantity.toString()),
                    InkWell(
                      onTap: () {
                        setState(() {
                          quantity--;
                        });
                      },
                      child: Icon(
                        Icons.remove_circle_outline,
                        size: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ));
      catalogueCards.add(catalogueCard);
      i++;
    }
    return catalogueCards;
  }
}
