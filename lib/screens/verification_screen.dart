import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.height;
    double sizeY = MediaQuery.of(context).size.width;
    TextEditingController pinCode = TextEditingController();
    bool workingField = true;
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
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      colors: [
                        Color(0xff3c2e48),
                        Color.fromARGB(255, 125, 90, 152),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(250, 130))),
                child: const Padding(
                  padding: EdgeInsets.only(top: 70.0, left: 20),
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
            const Padding(
              padding: EdgeInsets.only(top: 250.0, left: 30),
              child: Text(
                "Please enter Code sent to",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 90, 90, 90)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 250, left: 25),
              width: 300,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+9xxxxxxxxxxxx",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 90, 90, 90)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change Phone Number",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromARGB(255, 95, 95, 95)),
                      ))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 310.0, left: 25),
                child: Container(
                    decoration: const BoxDecoration(),
                    height: 55,
                    width: 320,
                    child: Stack(children: [
                      TextField(
                        cursorHeight: 0,
                        cursorWidth: 0,
                        style: const TextStyle(
                          fontSize: 30,
                          letterSpacing: 60,
                        ),
                        keyboardType: TextInputType.number,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                        controller: pinCode,
                        enabled: workingField,
                        onChanged: (value) {
                          if (value.length - 1 == 4) {
                            setState(() {
                              workingField = true;
                              print("=======================>" + value);
                            });
                          }
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        left: 15,
                        child: Container(
                          margin: const EdgeInsets.only(right: 40),
                          height: 3,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 124, 124, 124),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 90,
                        child: Container(
                          margin: const EdgeInsets.only(right: 40),
                          height: 3,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 124, 124, 124),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 168,
                        child: Container(
                          margin: const EdgeInsets.only(right: 40),
                          height: 3,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 124, 124, 124),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 245,
                        child: Container(
                          margin: const EdgeInsets.only(right: 40),
                          height: 3,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 124, 124, 124),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ]))),
            Container(
              margin: const EdgeInsets.only(top: 400, left: 25),
              height: 60,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 470.0, left: 150),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Resend",
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
