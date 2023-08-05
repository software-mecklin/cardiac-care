import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: HexColor("#37C9EE"), style: BorderStyle.solid, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
        child: Text(
          "Skip",
          style: GoogleFonts.lato(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: HexColor("#37C9EE")),
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: HexColor("#37C9EE"), style: BorderStyle.solid, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
        child: Text(
          "Next",
          style: GoogleFonts.lato(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: HexColor("#37C9EE")),
        ),
      ),
    );
  }
}


class backButton extends StatelessWidget {
  const backButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: HexColor("#37C9EE"), style: BorderStyle.solid, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
        child: Text(
          "Back",
          style: GoogleFonts.lato(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: HexColor("#37C9EE")),
        ),
      ),
    );
  }
}

class BlueButton extends StatelessWidget {
  final text;
  const BlueButton({super.key, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 64,
      width: 300,
      decoration: BoxDecoration(
        color: HexColor("#37C9EE"),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: HexColor("#37C9EE"), style: BorderStyle.solid, width: 2),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.lato(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
      ),
    );
  }
}

class TestButton extends StatelessWidget {
  final text;
  const TestButton({super.key, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: MediaQuery.of(context).size.width - 60,
      decoration: BoxDecoration(
        color: HexColor("#37C9EE"),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: HexColor("#37C9EE"), style: BorderStyle.solid, width: 2),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.lato(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
      ),
    );
  }
}

class GoHomeButton extends StatelessWidget {
  final text;
  const GoHomeButton({super.key, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: MediaQuery.of(context).size.width - 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: Colors.black, style: BorderStyle.solid, width: 1),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.lato(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
      ),
    );
  }
}