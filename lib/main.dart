import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/pages/homepage.dart';
import 'package:medcentral/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var primaryColor = HexColor("#37C9EE");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: primaryColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

