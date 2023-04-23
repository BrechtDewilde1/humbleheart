import 'package:flutter/material.dart';
import '../constants/string_constants.dart';

class actsOfCare extends StatelessWidget {
  const actsOfCare(
      {Key? key,
      required this.screenWidth,
      required this.screenHeight,
      required this.actDescription,
      required this.actTitle,
      required this.imagePath,
      required this.mobile})
      : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String imagePath;
  final String actTitle;
  final String actDescription;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return mobile
        ? Container(
            padding: EdgeInsets.only(
              top: 8,
            ),
            width: screenWidth * 0.6,
            height: screenHeight * 0.6,
            child: mobile
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          imagePath,
                          width: screenWidth * 0.6,
                          height: screenHeight * 0.3,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: screenWidth * 0.6,
                        height: screenHeight * 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              actTitle,
                              style: StringStyleConstants.boldLongText(
                                  screenHeight),
                            ),
                            Text(
                              actDescription,
                              style: StringStyleConstants.longTextBlock(
                                  screenHeight),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          imagePath,
                          width: screenWidth * 0.1,
                          height: screenHeight * 0.2,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: screenWidth * 0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              actTitle,
                              style: StringStyleConstants.boldLongText(
                                  screenHeight),
                            ),
                            Text(
                              actDescription,
                              style: StringStyleConstants.longTextBlock(
                                  screenHeight),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
          )
        : Container(
            padding: EdgeInsets.only(
              top: 8,
            ),
            width: screenWidth * 0.6,
            height: screenHeight * 0.2,
            child: mobile
                ? Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          imagePath,
                          width: screenWidth * 0.1,
                          height: screenHeight * 0.2,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: screenWidth * 0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              actTitle,
                              style: StringStyleConstants.boldLongText(
                                  screenHeight),
                            ),
                            Text(
                              actDescription,
                              style: StringStyleConstants.longTextBlock(
                                  screenHeight),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          imagePath,
                          width: screenWidth * 0.1,
                          height: screenHeight * 0.2,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: screenWidth * 0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              actTitle,
                              style: StringStyleConstants.boldLongText(
                                  screenHeight),
                            ),
                            Text(
                              actDescription,
                              style: StringStyleConstants.longTextBlock(
                                  screenHeight),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
          );
  }
}
