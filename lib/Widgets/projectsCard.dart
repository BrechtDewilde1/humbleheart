import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../constants/image_constants.dart';
import '../constants/string_constants.dart';

class projectsCard extends StatelessWidget {
  const projectsCard({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.cardTitle,
    required this.cardDescription,
    required this.cardImagePath,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String cardTitle;
  final String cardDescription;
  final String cardImagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
            child: Image.asset(
              cardImagePath,
              width: screenWidth * 0.2,
              height: screenHeight * 0.35,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: screenWidth * 0.2,
            color: ColorConstants.yellowFocusColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    cardTitle,
                    style: StringStyleConstants.projectsCardTitle(screenHeight),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 8, right: 8),
            width: screenWidth * 0.2,
            child: Text(
              cardDescription,
              textAlign: TextAlign.center,
              style: StringStyleConstants.projectsCardDescription(screenHeight),
            ),
          ),
        ],
      ),
    );
  }
}
