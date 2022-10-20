import 'package:eagles_customer_end/presentation/customeText.dart';
import 'package:eagles_customer_end/presentation/post.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 32.0,
                    height: 32.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        border: Border.all(
                            width: 1.0, color: Color.fromRGBO(28, 45, 200, 1))),
                    child: IconButton(
                        icon: ImageIcon(
                          AssetImage("assets/Vector.png"),
                        ),
                        onPressed: () {}),
                  ),
                  size > 850
                      ? SizedBox(
                          width: 100,
                        )
                      : Container(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        child: Row(
                          children: [
                            CustomeText(
                                text: "Gbemisola Shola",
                                textColor: Color.fromRGBO(28, 45, 200, 1),
                                size: 12.0),
                            ImageIcon(
                              AssetImage("assets/checked.png"),
                              color: Color.fromRGBO(28, 45, 200, 1),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 20,
                        child: Row(
                          children: [
                            CustomeText(
                                text: "Customer",
                                textColor: Color.fromRGBO(153, 153, 153, 1),
                                size: 8.0),
                            size < 850
                                ? SizedBox(
                                    width: 240,
                                  )
                                : SizedBox(
                                    width: 500,
                                  ),
                            IconButton(
                              icon: ImageIcon(
                                AssetImage(
                                  "assets/options.png",
                                ),
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Post(),
              Row(
                children: [
                  size < 850
                      ? SizedBox(
                          width: 180.0,
                        )
                      : SizedBox(width: 550),
                  IconButton(
                    icon: ImageIcon(
                      AssetImage("assets/like.png"),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                    icon: ImageIcon(
                      AssetImage("assets/comment.png"),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                    icon: ImageIcon(
                      AssetImage("assets/share.png"),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )),
    );
  }
}
