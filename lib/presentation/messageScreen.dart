import 'dart:ffi';

import 'package:eagles_customer_end/presentation/customeText.dart';
import 'package:eagles_customer_end/presentation/userProfile.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 150,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: double.maxFinite,
                        height: 108.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/profileBackground.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 20,
                      child: UserProfile(doSomething: () {}),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeText(
                        text: "Adebisi Abudu",
                        textColor: Color.fromRGBO(28, 45, 200, 1),
                        size: 16.0),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CustomeText(
                            text: "Customer",
                            textColor: Color.fromRGBO(113, 118, 161, 1),
                            size: 12.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 150.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Become a worker"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(28, 45, 200, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
