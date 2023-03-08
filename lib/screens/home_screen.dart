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
        color: Color.fromARGB(255, 235, 235, 235),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu_outlined,
                              color: Colors.white,
                            )),
                        Text("MyShop",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                            ))
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
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black45,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("./images/cloths.jpg"))),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(158, 60, 46, 72),
                          Color.fromARGB(75, 125, 90, 152),
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fashion Sale",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          InkWell(
                            child: Text(
                              "See more >",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 223, 167, 1)),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20, bottom: 10),
            child: Text(
              "Catalogue",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black87),
            ),
          ),
          Container(
            height: 100,
            child: ListView(
                scrollDirection: Axis.horizontal, children: createCatalogue()),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20, bottom: 10),
            child: Text(
              "Featured",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black87),
            ),
          ),
          Container(height: 290, child: createFeaturedItems())
        ]));
  }

  Widget createFeaturedItems() {
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

    return GridView.builder(
      itemCount: 6,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(catalogueData[index]))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(94, 125, 90, 152),
                        Color.fromARGB(172, 60, 46, 72),
                      ]),
                    ),
                    child: Center(
                      child: Text(
                        catalogueData[index + 7],
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
        );
      },
    );
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
          width: 180,
          height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Stack(children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage(catalogueData[i]))),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(94, 125, 90, 152),
                  Color.fromARGB(172, 60, 46, 72),
                ]),
              ),
              child: Center(
                child: Text(
                  catalogueData[i + 7],
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
        ),
      );
      catalogues.add(catalogue);
      i++;
    }
    return catalogues;
  }
}
