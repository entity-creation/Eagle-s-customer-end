import 'dart:ffi';

import 'package:eagles_customer_end/application/bloc/navBloc/bloc/navigation_bloc.dart';
import 'package:eagles_customer_end/application/navigation/screenNavigation.dart';
import 'package:eagles_customer_end/presentation/responsiveButton.dart';
import 'package:eagles_customer_end/presentation/welcomeText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int pageIndex = 1;
  List images = ["welcome1.png", "welcome2.png", "welcome3.png"];
  List heading = [
    "Achieve your Goals",
    "Easy and Profitable",
    "Satisfied Customers"
  ];

  List<String> texts = [
    "Providing and building a new stream of income for both workers and artisans.",
    "An easy and fast way to get workers of any kind to your doorsteps and a profitable way to earn money ieasy and fast.",
    "Providing professional and skilled services for your everyday needs"
  ];

  List<String> label = ["Skip", "Back", "Sign up"];
  List<String> label2 = ["Next", "Next", "Log in"];
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
            body: PageView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (_, pageIndex) {
                  return Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/" + images[pageIndex],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, top: 670.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WelcomeText(
                              heading: heading[pageIndex],
                              text: texts[pageIndex]),
                          SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            children: List.generate(3, (indexDots) {
                              return Container(
                                margin: EdgeInsets.only(right: 2.0),
                                width: pageIndex == indexDots ? 25 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                              );
                            }),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Row(
                            children: [
                              ResponsiveButton(
                                buttonLabel: label[pageIndex],
                                buttonColor: Colors.white,
                                textColor: Colors.blue,
                                doStuff: pageIndex == 0
                                    ? () {
                                        ScreenNavigation().nextButton(context);
                                      }
                                    : pageIndex == 1
                                        ? () {
                                            controller.previousPage(
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.easeIn);
                                          }
                                        : () {
                                            ScreenNavigation()
                                                .signupButton(context);
                                          },
                              ),
                              SizedBox(
                                width: 70.0,
                              ),
                              ResponsiveButton(
                                buttonLabel: label2[pageIndex],
                                buttonColor: Colors.blue,
                                textColor: Colors.white,
                                doStuff: pageIndex + 1 != images.length
                                    ? () {
                                        controller.nextPage(
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.easeIn);
                                      }
                                    : () {
                                        ScreenNavigation().nextButton(context);
                                        ScreenNavigation().googleForm(context);
                                      },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }));
      },
    );
  }
}
