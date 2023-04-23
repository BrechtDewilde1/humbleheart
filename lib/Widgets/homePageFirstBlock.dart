import 'package:flutter/material.dart';
import 'package:humbleheart/Widgets/yellowButton.dart';

import '../constants/color_constants.dart';
import '../constants/image_constants.dart';
import '../constants/string_constants.dart';
import 'menuItem.dart';

class homePageFirstBlock extends StatelessWidget {
  const homePageFirstBlock({
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
    return mobile
        ? Container(
            height: screenHeight * 0.6,
            color: ColorConstants.yellowBackGroundColor,
            padding: EdgeInsets.only(
              left: screenWidth * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringConstants.makeAdifference,
                  style: StringStyleConstants.makeADifference(screenHeight),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  StringConstants.headerTitle,
                  style: StringStyleConstants.mainTitleHomePage(screenHeight),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  StringConstants.headerSubTitle,
                  style: StringStyleConstants.longTextBlock(screenHeight),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    YellowButton(
                        changingColor: ColorConstants.greenBackGroundColor,
                        route: '/projects',
                        center: false,
                        width: screenHeight * 0.3,
                        height: screenWidth * 0.1,
                        text: "How can you help?",
                        fontsize: screenWidth),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(ImageConstants.circleImage1),
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(ImageConstants.circleImage2),
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(ImageConstants.circleImage3),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(StringConstants.peopleHelped),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        : Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                  left: screenWidth * 0.1,
                ),
                width: screenWidth * 0.7,
                height: screenHeight,
                color: ColorConstants.yellowBackGroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Menu
                    Row(
                      children: [
                        Image.asset(
                          ImageConstants.humbleHearLogo,
                          width: screenWidth * 0.1,
                          height: screenHeight * 0.1,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          StringConstants.humbleHearth,
                          textAlign: TextAlign.center,
                          style: StringStyleConstants.humbleHearthStyle(
                              screenHeight),
                        ),
                        SizedBox(
                          width: screenWidth * 0.1,
                        ),
                        SelectedMenuItem(
                          screenHeight: screenHeight,
                          itemText: StringConstants.menuHome,
                          route: '/',
                        ),
                        UnSelectedMenuItem(
                          screenHeight: screenHeight,
                          itemText: StringConstants.menuProjects,
                          route: '/projects',
                        ),
                        UnSelectedMenuItem(
                          screenHeight: screenHeight,
                          itemText: StringConstants.menuHomeStay,
                          route: '/homestay',
                        ),
                        UnSelectedMenuItem(
                          screenHeight: screenHeight,
                          itemText: StringConstants.menuAboutUs,
                          route: '/about',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Container(
                      width: screenWidth * 0.7 * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringConstants.makeAdifference,
                            style: StringStyleConstants.makeADifference(
                                screenHeight),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            StringConstants.headerTitle,
                            style: StringStyleConstants.mainTitleHomePage(
                                screenHeight),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            StringConstants.headerSubTitle,
                            style: StringStyleConstants.longTextBlock(
                                screenHeight),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              YellowButton(
                                  changingColor:
                                      ColorConstants.greenBackGroundColor,
                                  route: '/projects',
                                  center: false,
                                  width: screenHeight * 0.30,
                                  height: screenWidth * 0.05,
                                  text: "How can you help?",
                                  fontsize: screenHeight),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(ImageConstants.circleImage1),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(ImageConstants.circleImage2),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(ImageConstants.circleImage3),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(StringConstants.peopleHelped),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                width: screenWidth * 0.3,
                height: screenHeight,
                color: ColorConstants.greenBackGroundColor,
                child: Column(
                  children: [
                    YellowButton(
                      changingColor: Colors.white,
                      route: '/about',
                      center: true,
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.1,
                      text: "Contact",
                      fontsize: screenHeight,
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Image.asset(ImageConstants.titleImage),
                  ],
                ),
              )
            ],
          );
  }
}
