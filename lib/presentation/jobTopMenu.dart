import 'package:eagles_customer_end/presentation/customeText.dart';
import 'package:flutter/material.dart';

class JobTopMenu extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  const JobTopMenu(
      {required this.color,
      required this.text,
      required this.textColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 15,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(0, 12, 30, 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Color.fromRGBO(153, 153, 153, 1)),
        ),
        child: CustomeText(text: text, textColor: textColor, size: 12));
  }
}
