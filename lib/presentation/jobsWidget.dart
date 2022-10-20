import 'package:eagles_customer_end/presentation/customeText.dart';
import 'package:flutter/material.dart';

class JobsWidget extends StatelessWidget {
  final String jobsCategory;
  final String jobType;
  final int noOfWorkers;
  final String backgroundImage;
  const JobsWidget(
      {required this.jobsCategory,
      required this.jobType,
      required this.noOfWorkers,
      required this.backgroundImage,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 208,
      padding: EdgeInsets.fromLTRB(16, 11, 10, 10),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/" + backgroundImage),
        fit: BoxFit.cover,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 160),
            width: 100,
            padding: EdgeInsets.only(left: 0.1, right: 0.1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color.fromRGBO(28, 45, 200, 1),
            ),
            child: Center(
              child: CustomeText(
                  text: jobsCategory, textColor: Colors.white, size: 10.0),
            ),
          ),
          CustomeText(text: jobType, textColor: Colors.white, size: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageIcon(
                AssetImage("assets/locationIcon.png"),
                color: Colors.white,
              ),
              CustomeText(
                  text: noOfWorkers.toString() + " workers",
                  textColor: Colors.white,
                  size: 8.0),
              SizedBox(
                width: 75,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(28, 45, 200, 1),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ImageIcon(
                  AssetImage("assets/tagIcon.png"),
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
