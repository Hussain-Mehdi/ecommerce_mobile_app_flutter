import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  State<CheckoutScreen> createState() => CheckoutScreenState();
}

class CheckoutScreenState extends State<CheckoutScreen> {
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
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 20,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Text("Checkout",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                ),
              ),
            ])),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Text(
            "Catagory",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(41, 194, 194, 194),
                      blurRadius: 0.5,
                      spreadRadius: 1),
                ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "B-17 Islamabad,",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w800),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Change >",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w800),
                          ))
                    ],
                  ),
                  Text(
                    "Block B Main Markaz",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Margalla Heights Palaza Second floor",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Text(
            "Catagory",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(41, 194, 194, 194),
                          blurRadius: 0.5,
                          spreadRadius: 1),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "B-17 Islamabad,",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Block B Main Markaz",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Margalla Heights Palaza Second floor",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(41, 194, 194, 194),
                          blurRadius: 0.5,
                          spreadRadius: 1),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "B-17 Islamabad,",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Block B Main Markaz",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Margalla Heights Palaza Second floor",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(41, 194, 194, 194),
                          blurRadius: 0.5,
                          spreadRadius: 1),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "B-17 Islamabad,",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Block B Main Markaz",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Margalla Heights Palaza Second floor",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
