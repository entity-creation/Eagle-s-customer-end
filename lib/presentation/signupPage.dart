import 'package:eagles_customer_end/application/navigation/screenNavigation.dart';
import 'package:eagles_customer_end/presentation/customTextInput.dart';
import 'package:flutter/material.dart';

import 'alertDialog.dart';
import 'customeText.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  int? userType = null;
  bool? checkedValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(left: 20.0, top: 70.0),
          child: ListView(
            children: [
              CustomeText(
                text: "Create Account",
                textColor: Color.fromRGBO(28, 45, 200, 1),
                size: 24.0,
                fontWeight: FontWeight.bold,
              ),
              CustomeText(
                text: "Sign up to get started",
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
                                            color: Colors.blue,
                                            fontSize: 50.0)),
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
              SizedBox(
                height: 24,
              ),
              CustomTextInput(
                  textLabel: "Email Address",
                  hintText: "Enter your email address"),
              SizedBox(
                height: 24,
              ),
              CustomTextInput(
                textLabel: "Password",
                hintText: "Enter your password",
                obscureText: true,
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextInput(
                textLabel: "Confirm Password",
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
                      text: "I agree to",
                      textColor: Color.fromRGBO(15, 15, 15, 0.75),
                      size: 12.0),
                  TextButton(
                      onPressed: () {},
                      child: CustomeText(
                        text: "Terms and conditions",
                        textColor: Color.fromRGBO(28, 45, 200, 1),
                        size: 12.0,
                      ))
                ],
              ),
              SizedBox(
                height: 160,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(54, 0, 54, 10),
                child: ElevatedButton(
                  child: Text(
                    "Signup",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
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
                      text: "Have an account?",
                      textColor: Colors.black,
                      size: 12.0),
                  InkWell(
                    child: CustomeText(
                        text: "Log in",
                        textColor: Color.fromRGBO(28, 45, 200, 1),
                        size: 12.0),
                    onTap: () {
                      ScreenNavigation().nextButton(context);
                    },
                  )
                ],
              ),
            ],
          )),
    );
  }
}
