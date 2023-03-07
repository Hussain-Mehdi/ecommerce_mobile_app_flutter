import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.height;
    double sizeY = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        height: sizeX,
        width: sizeY,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("./images/men.jpg"))),
            ),
            Positioned(
              child: Container(
                height: sizeX,
                width: sizeY,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(94, 125, 90, 152),
                      Color.fromARGB(172, 60, 46, 72),
                    ]),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
              ),
            ),
            Positioned(
              bottom: 40,
              right: 0,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(148, 255, 193, 7),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 200,
                width: sizeY,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      colors: [
                        Color(0xff7d5a98),
                        Color(0xff3c2e48),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        "MyShop",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: SizedBox(
                        width: 240,
                        child: Text(
                          "The tool offers everything from clothing, watches and barware to beef jerky and artwork. ",
                          style: TextStyle(
                            textBaseline: TextBaseline.alphabetic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
