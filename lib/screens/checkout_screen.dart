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
                          onPressed: () {
                            Navigator.pop(context);
                          },
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
          padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
          child: Row(
            children: [
              Icon(Icons.location_on_outlined),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Payment Method",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ],
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
          child: Row(
            children: [
              Icon(Icons.delivery_dining_outlined),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Delivery Method",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('./images/easypaisa.png'))),
                      ),
                      Text(
                        "\$16.00",
                        style: TextStyle(
                            color: Color.fromARGB(255, 93, 57, 121),
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "1-2 days",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 136, 136, 136)),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('./images/sadapay.png'))),
                      ),
                      Text(
                        "\$18.00",
                        style: TextStyle(
                            color: Color.fromARGB(255, 93, 57, 121),
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "1-2 days",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 136, 136, 136)),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('./images/master.png'))),
                      ),
                      Text(
                        "\$20.00",
                        style: TextStyle(
                            color: Color.fromARGB(255, 93, 57, 121),
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "1-2 days",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 136, 136, 136)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
          child: Row(
            children: [
              Icon(Icons.payment_outlined),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Payment Method",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ],
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
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(38, 190, 190, 190),
                      spreadRadius: 2,
                      blurRadius: 1)
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(20, 20),
                    topRight: Radius.elliptical(20, 20)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Items",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "\$290.00",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "\$10.00",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "\$300.00",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        "Pay",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
