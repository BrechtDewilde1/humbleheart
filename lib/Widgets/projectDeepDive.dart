import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/image_constants.dart';
import '../constants/string_constants.dart';
import 'actsOfCare.dart';

class projectDeepDive extends StatelessWidget {
  const projectDeepDive(
      {Key? key,
      required this.screenHeight,
      required this.screenWidth,
      required this.recentActsString,
      required this.actDescription1,
      required this.actDescription2,
      required this.actDescription3,
      required this.actTitle1,
      required this.actTitle2,
      required this.actTitle3,
      required this.mainImage,
      required this.imagePath1,
      required this.imagePath2,
      required this.imagePath3,
      required this.projectConclude,
      required this.projectDescriptionPartOne,
      required this.projectIntroduction,
      required this.projectTitle,
      required this.mobile})
      : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String projectTitle;
  final String projectIntroduction;
  final String projectDescriptionPartOne;
  final String projectConclude;
  final String actDescription1;
  final String actTitle1;
  final String imagePath1;
  final String actDescription2;
  final String actTitle2;
  final String imagePath2;
  final String actDescription3;
  final String actTitle3;
  final String imagePath3;
  final String mainImage;
  final String recentActsString;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: ColorConstants.yellowFocusColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                projectTitle,
                style: StringStyleConstants.whiteQuestionTitle(screenHeight),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 70,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            mainImage,
            width: screenWidth * 0.60,
            height: screenHeight * 0.6,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: screenWidth * 0.6,
          child: Text(
            projectIntroduction,
            style: StringStyleConstants.longTextBlock(screenHeight),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: screenWidth * 0.6,
          child: Text(
            'OUR MISSION',
            style: StringStyleConstants.boldLongText(screenHeight),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: screenWidth * 0.6,
          child: Text(
            projectDescriptionPartOne,
            style: StringStyleConstants.longTextBlock(screenHeight),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: screenWidth * 0.6,
          child: Text(
            projectConclude,
            style: StringStyleConstants.longTextBlock(screenHeight),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: screenWidth * 0.6,
          child: Text(
            recentActsString,
            style: StringStyleConstants.longTextBlock(screenHeight),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        actsOfCare(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          actDescription: actDescription1,
          actTitle: actTitle1,
          imagePath: imagePath1,
          mobile: mobile,
        ),
        actsOfCare(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          actDescription: actDescription2,
          actTitle: actTitle2,
          imagePath: imagePath2,
          mobile: mobile,
        ),
        actsOfCare(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          actDescription: actDescription3,
          actTitle: actTitle3,
          imagePath: imagePath3,
          mobile: mobile,
        ),
      ],
    );
  }
}
