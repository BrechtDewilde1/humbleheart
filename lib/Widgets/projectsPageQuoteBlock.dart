import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/image_constants.dart';
import '../constants/string_constants.dart';

class projectsPageQuoteBlock extends StatelessWidget {
  const projectsPageQuoteBlock({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.mobile,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      width: screenWidth,
      height: screenHeight * 0.6,
      color: ColorConstants.darkBlueBackGroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: mobile ? screenWidth * 0.6 : screenWidth * 0.4,
            height: screenHeight * 0.6 * 0.5,
            child: Card(
              color: ColorConstants.greenBackGroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.4 * 0.15,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(ImageConstants.robertImage),
                      ),
                      SizedBox(
                        width: screenWidth * 0.4 * 0.05,
                      ),
                      Text(
                        "Robert Ingersoll",
                        style: StringStyleConstants.whiteQuestionTitle(
                            screenHeight),
                      )
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(
                        width: screenWidth * 0.4 * 0.24,
                      ),
                      Text(
                        '"You rise by lifting others"',
                        style:
                            StringStyleConstants.quoteTextBlock(screenHeight),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
