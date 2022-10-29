import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  String? imageUrl;
  final Function() doSomething;
  UserProfile({required this.doSomething, this.imageUrl = null, super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.doSomething,
      child: Container(
        height: 75.0,
        width: 75.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45.0),
          border: Border.all(
            color: Color.fromRGBO(28, 45, 200, 1),
            width: 1.5,
          ),
        ),
        child: widget.imageUrl == null
            ? ImageIcon(
                AssetImage(
                  "assets/Subtract.png",
                ),
                color: Color.fromRGBO(28, 45, 200, 1),
              )
            : Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          widget.imageUrl.toString(),
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(45)),
              ),
      ),
    );
  }
}
