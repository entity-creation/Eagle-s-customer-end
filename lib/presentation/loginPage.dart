import 'package:eagles_customer_end/application/navigation/screenNavigation.dart';
import 'package:eagles_customer_end/presentation/alertDialog.dart';
import 'package:eagles_customer_end/presentation/customTextInput.dart';
import 'package:eagles_customer_end/presentation/customeText.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Border a = Border.all(width: 4.0, color: Colors.blue);
  Border b = Border.all(width: 4.0, color: Colors.white24);
  bool? checkedValue = true;
  int? userType = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20.0, top: 70.0),
        child: ListView(
          children: [
            CustomeText(
              text: "Welcome Back",
              textColor: Color.fromRGBO(28, 45, 200, 1),
              size: 24.0,
              fontWeight: FontWeight.bold,
            ),
            CustomeText(
              text: "Sign in to continue where you left off.",
              textColor: Color.fromRGBO(15, 15, 15, 0.75),
              size: 12.0,
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Container(
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
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomAlertDialog((value) {
                                setState(() {
                                  userType = value;
                                });
                                return userType = value;
                              });
                            });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45.0)),
                        child: Center(
                          child: userType == 0
                              ? ImageIcon(
                                  AssetImage("assets/Subtract.png"),
                                  color: Color.fromRGBO(28, 45, 200, 1),
                                )
                              : userType == 1
                                  ? ImageIcon(
                                      AssetImage("assets/Vector.png"),
                                      color: Color.fromRGBO(28, 45, 200, 1),
                                    )
                                  : Text("?",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 50.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                userType == 0
                    ? CustomeText(
                        text: "Customer",
                        textColor: Color.fromRGBO(15, 15, 15, 0.75),
                        size: 24.0)
                    : userType == 1
                        ? CustomeText(
                            text: "Worker",
                            textColor: Color.fromRGBO(15, 15, 15, 0.75),
                            size: 24.0)
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomeText(
                                  text: "What type of user are you?",
                                  textColor: Color.fromRGBO(15, 15, 15, 0.75),
                                  size: 12.0),
                              CustomeText(
                                  text: "Click the circle to select",
                                  textColor: Color.fromRGBO(28, 45, 200, 1),
                                  size: 12.0)
                            ],
                          ),
              ],
            ),
            SizedBox(height: 24.0),
            CustomTextInput(
                textLabel: "Email Address",
                hintText: "Enter your email address"),
            SizedBox(height: 24.0),
            CustomTextInput(
              textLabel: "Password",
              hintText: "Enter your password",
              obscureText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                CustomeText(
                    text: "Keep me signed in",
                    textColor: Colors.black,
                    size: 12.0),
                SizedBox(
                  width: 110.0,
                ),
                InkWell(
                  child: CustomeText(
                    text: "Forgot password?",
                    textColor: Color.fromRGBO(28, 45, 200, 1),
                    size: 12.0,
                  ),
                  onTap: () {},
                )
              ],
            ),
            SizedBox(
              height: 260.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(54, 0, 54, 10),
              child: ElevatedButton(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  ScreenNavigation().landingPage(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(28, 45, 200, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomeText(
                    text: "Dont have an account?",
                    textColor: Colors.black,
                    size: 12.0),
                InkWell(
                  child: CustomeText(
                      text: "Sign up",
                      textColor: Color.fromRGBO(28, 45, 200, 1),
                      size: 12.0),
                  onTap: () {
                    ScreenNavigation().signupButton(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
