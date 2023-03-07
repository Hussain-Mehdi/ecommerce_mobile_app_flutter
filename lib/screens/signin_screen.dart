import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.height;
    double sizeY = MediaQuery.of(context).size.width;
    return Material(
      color: Colors.white,
      child: Container(
        height: sizeX,
        width: sizeY,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: 200,
                width: sizeY,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      colors: [
                        Color(0xff3c2e48),
                        Color.fromARGB(255, 125, 90, 152),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        // bottomLeft: Radius.circular(50),
                        bottomRight: Radius.elliptical(250, 130))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0, left: 20),
                  child: Text(
                    "What is your phone\nnumber?",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250.0, left: 30),
              child: Text(
                "Please enter your phone number to verify your account",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 90, 90, 90)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 310.0, left: 25),
                child: Container(
                  height: 55,
                  width: 310,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter Phone number",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 196, 196, 196)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 380, left: 25),
              height: 60,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450.0, left: 150),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 133, 133, 133)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
