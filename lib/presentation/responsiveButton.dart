import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final String buttonLabel;
  final Color buttonColor;
  final Color textColor;
  final Function()? doStuff;
  const ResponsiveButton(
      {required this.buttonLabel,
      required this.buttonColor,
      required this.textColor,
      required this.doStuff,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145.0,
      height: 35.0,
      child: ElevatedButton(
        child: Text(
          buttonLabel,
          style: TextStyle(color: textColor),
        ),
        onPressed: doStuff,
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
      ),
    );
  }
}
