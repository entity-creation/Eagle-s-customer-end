import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final double headingSize = 32.0;
  final String heading;
  final String text;
  final Color color = Colors.white;
  const WelcomeText({required this.heading, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(heading,
            style: TextStyle(
                color: color,
                fontFamily: "Roboto",
                fontSize: headingSize,
                fontStyle: FontStyle.normal)),
        Container(
          height: 70.0,
          child: Text(text,
              style: TextStyle(
                  color: color,
                  fontFamily: "Roboto",
                  fontSize: 16.0,
                  fontStyle: FontStyle.normal)),
        ),
      ]),
    );
  }
}
