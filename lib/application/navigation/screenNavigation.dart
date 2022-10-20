import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenNavigation {
  dynamic nextButton(BuildContext context) {
    Navigator.of(context).pushNamed("/login");
  }

  dynamic signupButton(BuildContext context) {
    Navigator.of(context).pushNamed("/signUp");
  }

  dynamic googleForm(BuildContext context) {
    Navigator.of(context).pushNamed("/googleForm");
  }

  dynamic landingPage(BuildContext context) {
    Navigator.of(context).pushNamed("/landingPage");
  }
}
