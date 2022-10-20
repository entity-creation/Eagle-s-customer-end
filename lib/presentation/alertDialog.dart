import 'dart:ui';

import 'package:eagles_customer_end/presentation/customeText.dart';
import 'package:flutter/material.dart';

typedef IntValue = int Function(int);

class CustomAlertDialog extends StatefulWidget {
  final IntValue callback;
  const CustomAlertDialog(this.callback, {super.key});

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: AlertDialog(
          title: Text("What type of user are you?"),
          titlePadding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
          content: Container(
            height: 300.0,
            child: Column(children: [
              Text("Select the type of user you are to continue signing up"),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color.fromRGBO(28, 45, 200, 1),
                            Color.fromRGBO(182, 184, 201, 1)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(45.0)),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45.0)),
                        child: Center(
                            child: IconButton(
                          icon: ImageIcon(
                            AssetImage("assets/Subtract.png"),
                            color: Color.fromRGBO(28, 45, 200, 1),
                          ),
                          onPressed: () {
                            widget.callback(0);
                            Navigator.of(context).pop();
                          },
                        )),
                      ),
                    ),
                  ),
                  CustomeText(
                      text: "Customer", textColor: Colors.black, size: 24.0),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color.fromRGBO(28, 45, 200, 1),
                            Color.fromRGBO(182, 184, 201, 1)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(45.0)),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45.0)),
                        child: Center(
                            child: IconButton(
                          icon: ImageIcon(
                            AssetImage("assets/Vector.png"),
                            color: Color.fromRGBO(28, 45, 200, 1),
                          ),
                          onPressed: () {
                            widget.callback(1);
                            Navigator.of(context).pop();
                          },
                        )),
                      ),
                    ),
                  ),
                  CustomeText(
                      text: "Worker", textColor: Colors.black, size: 24.0)
                ],
              ),
            ]),
          ),
          contentTextStyle: TextStyle(
              color: Color.fromRGBO(15, 15, 15, 0.75), fontSize: 12.0),
          contentPadding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
        ),
      ),
    );
  }
}
