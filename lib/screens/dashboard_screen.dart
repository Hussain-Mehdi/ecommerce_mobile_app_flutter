import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(""))),
          )
        ],
      ),
    );
  }
}
