import 'package:eagles_customer_end/presentation/customeText.dart';
import 'package:flutter/material.dart';

class MakePost extends StatefulWidget {
  const MakePost({super.key});

  @override
  State<MakePost> createState() => _MakePostState();
}

class _MakePostState extends State<MakePost> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          foregroundColor: Color.fromRGBO(28, 45, 200, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: IconButton(
                  icon: ImageIcon(
                    AssetImage("assets/cancelIcon.png"),
                  ),
                  color: Color.fromRGBO(28, 45, 200, 1),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: CustomeText(
                    text: "Post",
                    textColor: Color.fromRGBO(28, 45, 200, 1),
                    size: 16.0),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 20.0),
                child: Container(
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
                                      width: 1.0,
                                      color: Color.fromRGBO(28, 45, 200, 1))),
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
                                  padding: EdgeInsets.only(bottom: 4),
                                  child: CustomeText(
                                      text: "Gbemisola Shola",
                                      textColor: Color.fromRGBO(28, 45, 200, 1),
                                      size: 12.0),
                                ),
                                Container(
                                  child: CustomeText(
                                      text: "Customer",
                                      textColor:
                                          Color.fromRGBO(152, 153, 153, 1),
                                      size: 8.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 48.0),
                          child: TextField(
                            maxLines: 20,
                            decoration: InputDecoration(
                                hintText: "What's happening?",
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(153, 153, 153, 1),
                                    fontSize: 10.0),
                                border: InputBorder.none),
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 195),
                width: double.maxFinite,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(151, 218, 218, 223),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.photo,
                            color: Color.fromRGBO(28, 45, 200, 1)),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.camera_alt_outlined,
                            color: Color.fromRGBO(28, 45, 200, 1)),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 170),
                      child: IconButton(
                        icon: Icon(
                          Icons.attach_file,
                          color: Color.fromRGBO(28, 45, 200, 1),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Post",
                        style: TextStyle(fontSize: 12),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(28, 45, 200, 1),
                        foregroundColor: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
