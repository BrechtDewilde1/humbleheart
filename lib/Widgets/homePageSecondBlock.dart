import 'package:flutter/material.dart';
import 'package:humbleheart/Widgets/toDoItem.dart';
import 'package:humbleheart/Widgets/yellowButton.dart';
import 'package:humbleheart/constants/color_constants.dart';
import 'package:humbleheart/constants/string_constants.dart';
import 'package:humbleheart/constants/image_constants.dart';

class homePageSecondBlock extends StatelessWidget {
  const homePageSecondBlock({
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
      padding: EdgeInsets.only(
        left: screenWidth * 0.1,
      ),
      child: mobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    ImageConstants.community1Image,
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.5,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: screenWidth * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        "About Humbleheart",
                        style:
                            StringStyleConstants.makeADifference(screenWidth),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        StringConstants.titleSecondPage,
                        style:
                            StringStyleConstants.mainTitleHomePage(screenWidth),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        StringConstants.secondBlockLongText,
                        style: StringStyleConstants.longTextBlock(screenWidth),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  ImageConstants.senior1Image,
                                  width: screenWidth * 0.3,
                                  height: screenHeight * 0.3,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: screenWidth * 0.5,
                            height: screenHeight * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'No poverty',
                                    ),
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'Zero hunger',
                                    ),
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'Good health and well-being',
                                    ),
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'Quality education',
                                    ),
                                  ],
                                ),
                                YellowButton(
                                  center: true,
                                  width: screenWidth * 0.4,
                                  height: screenHeight * 0.1,
                                  text: 'About us',
                                  fontsize: screenHeight,
                                  route: '/about',
                                  changingColor:
                                      ColorConstants.greenBackGroundColor,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          : Row(
              children: [
                Container(
                  width: screenWidth * 0.8 * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      Text(
                        "About Humbleheart",
                        style:
                            StringStyleConstants.makeADifference(screenHeight),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        StringConstants.titleSecondPage,
                        style: StringStyleConstants.mainTitleHomePage(
                            screenHeight),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        StringConstants.secondBlockLongText,
                        style: StringStyleConstants.longTextBlock(screenHeight),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  ImageConstants.woman1Image,
                                  width: screenWidth * 0.15,
                                  height: screenHeight * 0.3,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: screenWidth * 0.17,
                            height: screenHeight * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'No poverty',
                                    ),
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'Zero hunger',
                                    ),
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'Good health and well-being',
                                    ),
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'Quality education',
                                    ),
                                  ],
                                ),
                                YellowButton(
                                  center: true,
                                  width: screenWidth * 0.15,
                                  height: 40,
                                  text: 'About us',
                                  fontsize: screenHeight,
                                  route: '/about',
                                  changingColor:
                                      ColorConstants.greenBackGroundColor,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.8 * 0.5,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          ImageConstants.woman2Image,
                          width: screenWidth * 0.8 * 0.5,
                          height: screenHeight * 0.4,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              ImageConstants.child1Image,
                              width: screenWidth * 0.8 * 0.5 * 0.4,
                              height: screenHeight * 0.3,
                              fit: BoxFit.fill,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              ImageConstants.woman3Image,
                              width: screenWidth * 0.8 * 0.5 * 0.4,
                              height: screenHeight * 0.3,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
