import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F1F7FC"),
      body: Center(child: Text("about")),);
  }
}
