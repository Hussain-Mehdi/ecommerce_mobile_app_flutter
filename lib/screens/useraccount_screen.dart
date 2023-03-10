import 'package:flutter/material.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.height;
    double sizeY = MediaQuery.of(context).size.width;
    return Material(
      color: Color.fromARGB(255, 236, 236, 236),
      child: Column(
        children: [
          Container(
            height: 200,
            width: sizeY,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: 170,
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
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Robert Alex",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+9xxxxxxxxxxxxx",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 66,
                  left: 20,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('./images/pot1.jpg'),
                  ),
                ),
                Positioned(
                    top: 90,
                    left: 300,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Icon(
                        Icons.edit_outlined,
                      ),
                    )),
              ],
            ),
          ),
          Column(children: createUserProfile())
        ],
      ),
    );
  }

  List<Widget> createUserProfile() {
    List<Widget> userProfile = [];
    List<String> profileData = [
      'Shopping Address',
      'Payment Methods',
      'Orders',
      'Favourite',
      'Setting',
      'Logout'
    ];

    List<Widget> settingIcons = [
      Icon(Icons.shopping_bag_outlined),
      Icon(Icons.shopping_basket_outlined),
      Icon(Icons.payment_outlined),
      Icon(Icons.favorite_outline),
      Icon(Icons.settings_outlined),
      Icon(Icons.logout_outlined),
      Icon(Icons.shopping_basket_outlined),
    ];

    int i = 0;

    while (i < 6) {
      Padding profileTile = Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: 320,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Color.fromARGB(31, 99, 99, 99),
                blurRadius: 1,
                spreadRadius: 1)
          ], borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                settingIcons[i],
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    profileData[i],
                    style: TextStyle(
                        color: Color.fromARGB(179, 0, 0, 0),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )),
        ),
      );

      userProfile.add(profileTile);
      i++;
    }
    return userProfile;
  }
}
