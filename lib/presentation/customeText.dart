import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double size;
  final FontWeight fontWeight;

  const CustomeText(
      {required this.text,
      required this.textColor,
      required this.size,
      this.fontWeight = FontWeight.normal,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style:
            TextStyle(color: textColor, fontSize: size, fontFamily: "Roboto"),
      ),
    );
  }
}
