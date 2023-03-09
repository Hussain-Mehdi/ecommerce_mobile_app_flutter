import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  double start = 30;
  double end = 50;
  List<DropdownMenuItem> dropDownItems = [
    DropdownMenuItem(child: Text("Jeans")),
    DropdownMenuItem(child: Text("Shirts")),
    DropdownMenuItem(child: Text("T-Shirts")),
    DropdownMenuItem(child: Text("Tops")),
    DropdownMenuItem(child: Text("Caps")),
    DropdownMenuItem(child: Text("Jackets")),
  ];

  int selectedValue = 0;
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
                      Text("Clothings",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(AssetImage("./images/filter.png")),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ])),
        RangeSlider(
            values: RangeValues(start, end),
            labels: RangeLabels('y', 'e'),
            min: 10,
            max: 80,
            onChanged: (value) {
              setState(() {
                start = value.start;
                end = value.end;
              });
            }),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color.fromARGB(255, 247, 247, 247)),
                child: Center(
                  child: Text(
                    "\$${start.toStringAsFixed(0)}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color.fromARGB(255, 247, 247, 247)),
                child: Center(
                  child: Text(
                    "\$${end.toStringAsFixed(0)}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 30),
          child: Text(
            "Catagory",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: DropdownButtonFormField(
            itemHeight: 60,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none)),
            items: <String>[
              "Jeans",
              "Shirts",
              "T-Shirts",
              "Tops",
              "Caps",
              "Jackets"
            ].map((String value) {
              return DropdownMenuItem(
                child: Text(value),
                value: value,
              );
            }).toList(),
            onChanged: (value) {},
            hint: Text(selectedValue.toString()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 30),
          child: Text(
            "Brands",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: DropdownButtonFormField(
            itemHeight: 60,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none)),
            items: <String>[
              "Jeans",
              "Shirts",
              "T-Shirts",
              "Tops",
              "Caps",
              "Jackets"
            ].map((String value) {
              return DropdownMenuItem(
                child: Text(value),
                value: value,
              );
            }).toList(),
            onChanged: (value) {},
            hint: Text(selectedValue.toString()),
          ),
        ),
        Container(
            height: 50,
            child: ListView(
                scrollDirection: Axis.horizontal, children: createColors()))
      ],
    ));
  }

  List<Widget> createColors() {
    List<Widget> colorsIcons = [];
    List<Color> colorList = [
      Colors.red,
      Colors.amber,
      Colors.green,
      Colors.yellow,
      Colors.limeAccent
    ];
    int i = 0;
    while (i < 5) {
      Padding c = Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: colorList[i]),
        ),
      );
      colorsIcons.add(c);
      i++;
    }
    return colorsIcons;
  }
}
