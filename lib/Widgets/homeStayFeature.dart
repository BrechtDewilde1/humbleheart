import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/string_constants.dart';

class homeStayFeature extends StatelessWidget {
  const homeStayFeature(
      {Key? key,
      required this.screenWidth,
      required this.screenHeight,
      required this.featureDescription,
      required this.featureTitle,
      required this.icon,
      required this.mobile})
      : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final IconData icon;
  final String featureTitle;
  final String featureDescription;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return mobile
        ? Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    color: ColorConstants.yellowFocusColor,
                    child: Icon(
                      icon,
                      size: 70,
                      color: Colors.white,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      featureTitle,
                      style:
                          StringStyleConstants.whiteFeatureTitle(screenHeight),
                    ),
                    Container(
                      width: screenWidth * 0.5,
                      child: Text(
                        featureDescription,
                        style: StringStyleConstants.greyTextBlockSmall(
                            screenHeight),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        : Container(
            width: screenWidth * 0.5 * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    color: ColorConstants.yellowFocusColor,
                    child: Icon(
                      icon,
                      size: 70,
                      color: Colors.white,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    featureTitle,
                    style: StringStyleConstants.whiteFeatureTitle(screenHeight),
                  ),
                ),
                Text(
                  featureDescription,
                  style: StringStyleConstants.greyTextBlockSmall(screenHeight),
                ),
              ],
            ),
          );
  }
}
