import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String textLabel;
  final String hintText;
  final bool obscureText;
  const CustomTextInput(
      {required this.textLabel,
      required this.hintText,
      this.obscureText = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textLabel,
            style: TextStyle(
                color: Color.fromRGBO(28, 45, 200, 1),
                fontSize: 12.0,
                fontFamily: "Roboto"),
          ),
          SizedBox(height: 8.0),
          TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5.0))),
          ),
        ],
      ),
    );
  }
}
