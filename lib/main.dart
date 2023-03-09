import 'package:flutter/material.dart';
import 'screens/catalogue_screen.dart';
import 'screens/clothing_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/home_screen.dart';
import 'screens/signin_screen.dart';
import 'screens/verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      home: ClothingScreen(),
    );
  }
}
