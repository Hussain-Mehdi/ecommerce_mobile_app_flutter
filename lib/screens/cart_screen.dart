import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  @override
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
          color: Colors.amber,
          child: ListView(
            children: [],
          ),
        ))
      ],
    ));
  }
}
