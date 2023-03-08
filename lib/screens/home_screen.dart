import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.height;
    double sizeY = MediaQuery.of(context).size.width;
    TextEditingController pinCode = TextEditingController();
    bool workingField = true;
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: createCatalogue()),
            ),
          ],
        ));
  }

  List<Widget> createCatalogue() {
    List<Widget> catalogues = [];
    List<String> catalogueData = [
      './images/1.png',
      './images/2.png',
      './images/3.png',
      './images/4.png',
      './images/5.png',
      './images/6.png',
      './images/7.png',
      'Cloths',
      'Shoes',
      'Watch',
      'Jackets',
      'Shites',
      "Glasses",
      'whats'
    ];

    int i = 0;

    while (i < 6) {
      Padding catalogue = Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(94, 125, 90, 152),
                  Color.fromARGB(172, 60, 46, 72),
                ]),
                image: DecorationImage(image: AssetImage(catalogueData[i]))),
            child: Center(
              child: Text(
                catalogueData[i + 7],
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      );
      catalogues.add(catalogue);
      i++;
    }
    return catalogues;
  }
}
