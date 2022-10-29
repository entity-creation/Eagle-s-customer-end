import 'package:eagles_customer_end/presentation/postWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    Key? _scaffoldKey = GlobalKey();
    return Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            elevation: 1,
            toolbarHeight: 80.0,
            flexibleSpace: Container(
              height: 80.0,
            ),
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(28, 45, 200, 1),
                        Color.fromRGBO(182, 184, 201, 1)
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(45.0),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage("assets/Subtract.png"),
                          color: Color.fromRGBO(28, 45, 200, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                size > 850
                    ? SizedBox(
                        width: 20,
                      )
                    : Container(),
                Container(
                  width: size < 850 ? 200.0 : 400.0,
                  height: 35.0,
                  margin: EdgeInsets.only(bottom: 5, top: 5),
                  child: Center(
                    child: SizedBox(
                      height: 35.0,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: "What service are you looking for?",
                          hintStyle: TextStyle(fontSize: 10),
                          fillColor: Colors.white,
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffffff),
                      border: Border(
                          top: BorderSide.none,
                          left: BorderSide.none,
                          bottom: BorderSide.none),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: -3,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                      ]),
                ),
                Container(
                  width: 35,
                  height: 35,
                  margin: EdgeInsets.only(bottom: 5, top: 5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 45, 200, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: Offset(0, 5),
                        ),
                      ]),
                  child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                      color: Colors.white),
                ),
                size < 850
                    ? SizedBox(
                        width: 10,
                      )
                    : SizedBox(
                        width: 200,
                      ),
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(AssetImage("assets/optionsIcon.png"),
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return PostWidget();
                }),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
            ),
            tooltip: "Post",
            backgroundColor: Color.fromRGBO(28, 45, 200, 1)));
  }
}
