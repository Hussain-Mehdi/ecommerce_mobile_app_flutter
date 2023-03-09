import 'package:flutter/material.dart';

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({super.key});

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  bool likePressed = false;

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.height;
    double sizeY = MediaQuery.of(context).size.width;
    TextEditingController pinCode = TextEditingController();
    bool workingField = true;
    return Material(
        color: Color(0xfff3f3f3),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 180,
            child: Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff3c2e48),
                      Color.fromARGB(255, 107, 71, 138)
                    ]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                          padding: const EdgeInsets.only(left: 85.0),
                          child: Text("MyShop",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 45,
                    child: TextField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            size: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30)),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30)),
                          hintText: "What are you looking for?"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: createCatalogueList(),
            ),
          )
        ]));
  }

  List<Widget> createCatalogueList() {
    List<Widget> catalogueCards = [];
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    catalogueData[i + 7],
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 56, 56, 56)),
                  ),
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      image:
                          DecorationImage(image: AssetImage(catalogueData[i]))),
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
