import 'package:flutter/material.dart';
import 'package:humbleheart/constants/color_constants.dart';
import 'package:humbleheart/constants/string_constants.dart';
import 'package:humbleheart/constants/image_constants.dart';
import 'package:humbleheart/Widgets/menuItem.dart';

import '../Widgets/footerWidget.dart';
import '../Widgets/toDoItem.dart';
import '../Widgets/yellowButton.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;
      double screenHeight = constraints.maxHeight;
      if (screenWidth < 1160) {
        return aboutScaffoldMobilePage(
            screenWidth: screenWidth, screenHeight: screenHeight);
      } else {
        return Scaffold(
          body: ListView(
            children: [
              aboutUsPageFirstBlock(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                mobile: false,
              ),
              aboutUsPageSecondBlock(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                mobile: false,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: peopleIntroductionWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  imageRoute: ImageConstants.prakashProfile,
                  introduction: StringConstants.prakashIntroduction,
                  name: "Prakash",
                  title: "Happy founder",
                  mobile: false,
                ),
              ),
              peopleIntroductionWidget(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                imageRoute: ImageConstants.dilkumariImage,
                introduction: StringConstants.delkumariIntroduction,
                name: "Dilkumari",
                title: "Happy co-founder",
                mobile: false,
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.5,
                color: ColorConstants.yellowBackGroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                      ],
                    ),
                    footerWidget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      mobile: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}

class aboutScaffoldMobilePage extends StatefulWidget {
  const aboutScaffoldMobilePage({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  State<aboutScaffoldMobilePage> createState() =>
      _aboutScaffoldMobilePageState();
}

class _aboutScaffoldMobilePageState extends State<aboutScaffoldMobilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Image.asset(
                  ImageConstants.humbleHearLogo,
                  width: 99,
                  height: 82,
                ),
              ),
              Text(
                StringConstants.humbleHearth,
                textAlign: TextAlign.center,
                style:
                    StringStyleConstants.humbleHearthStyle(widget.screenHeight),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: ColorConstants.darkBlueBackGroundColor,
          foregroundColor: ColorConstants.greenBackGroundColor,
        ),
        endDrawer: Drawer(
          backgroundColor: ColorConstants.greenBackGroundColor,
          child: ListView(children: [
            DrawerHeader(
                child: Column(
              children: [
                Image.asset(
                  ImageConstants.humbleHearLogo,
                  width: widget.screenWidth * 0.1,
                  height: widget.screenHeight * 0.1,
                  fit: BoxFit.contain,
                ),
                Text(
                  StringConstants.humbleHearth,
                  textAlign: TextAlign.center,
                  style: StringStyleConstants.humbleHearthStyle(
                      widget.screenHeight),
                ),
              ],
            )),
            ListTile(
              onTap: () => Navigator.pushNamed(context, "/home"),
              title: Text(
                "Home",
                style: StringStyleConstants.menuItemStyleNotSelected(
                    widget.screenHeight),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, "/projects"),
              title: Text(
                "Projects",
                style: StringStyleConstants.menuItemStyleNotSelected(
                    widget.screenHeight),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, "/homestay"),
              title: Text(
                "Homestay",
                style: StringStyleConstants.menuItemStyleNotSelected(
                    widget.screenHeight),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, "/about"),
              title: Text(
                "About",
                style: StringStyleConstants.menuItemStyleSelected(
                    widget.screenHeight),
              ),
            ),
          ]),
        ),
        body: ListView(
          children: [
            aboutUsPageFirstBlock(
                screenWidth: widget.screenWidth,
                screenHeight: widget.screenHeight,
                mobile: true),
            aboutUsPageSecondBlock(
              screenWidth: widget.screenWidth,
              screenHeight: widget.screenHeight,
              mobile: true,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: peopleIntroductionWidget(
                screenHeight: widget.screenHeight,
                screenWidth: widget.screenWidth,
                imageRoute: ImageConstants.prakashProfile,
                introduction: StringConstants.prakashIntroduction,
                name: "Prakash",
                title: "Happy founder",
                mobile: true,
              ),
            ),
            peopleIntroductionWidget(
              screenHeight: widget.screenHeight,
              screenWidth: widget.screenWidth,
              imageRoute: ImageConstants.dilkumariImage,
              introduction: StringConstants.delkumariIntroduction,
              name: "Dilkumari",
              title: "Happy co-founder",
              mobile: true,
            ),
            SizedBox(
              height: widget.screenHeight * 0.02,
            ),
            Container(
              width: widget.screenWidth,
              height: widget.screenHeight * 0.5,
              color: ColorConstants.yellowBackGroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  footerWidget(
                    screenHeight: widget.screenHeight,
                    screenWidth: widget.screenWidth,
                    mobile: true,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImageConstants.humbleHearLogo,
                        width: widget.screenWidth * 0.1,
                        height: widget.screenHeight * 0.1,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        StringConstants.humbleHearth,
                        textAlign: TextAlign.center,
                        style: StringStyleConstants.humbleHearthStyle(
                            widget.screenHeight),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class peopleIntroductionWidget extends StatelessWidget {
  const peopleIntroductionWidget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.imageRoute,
    required this.introduction,
    required this.name,
    required this.title,
    required this.mobile,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String title;
  final String introduction;
  final String name;
  final String imageRoute;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return mobile
        ? Column(
            children: [
              Container(
                color: ColorConstants.yellowFocusColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style:
                          StringStyleConstants.whiteQuestionTitle(screenHeight),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Column(
                children: [
                  Container(
                    width: screenWidth * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        imageRoute,
                        width: screenWidth * 0.3,
                        height: screenHeight * 0.6,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style:
                              StringStyleConstants.boldLongText(screenHeight),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          introduction,
                          style:
                              StringStyleConstants.longTextBlock(screenHeight),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.03,
                  ),
                ],
              )
            ],
          )
        : Column(
            children: [
              Container(
                color: ColorConstants.yellowFocusColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style:
                          StringStyleConstants.whiteQuestionTitle(screenHeight),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.1,
                  ),
                  Container(
                    width: screenWidth * 0.47,
                    height: screenHeight * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style:
                              StringStyleConstants.boldLongText(screenHeight),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          introduction,
                          style:
                              StringStyleConstants.longTextBlock(screenHeight),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.03,
                  ),
                  Container(
                    width: screenWidth * 0.3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        imageRoute,
                        width: screenWidth * 0.3,
                        height: screenHeight * 0.6,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.1,
                  ),
                ],
              )
            ],
          );
  }
}

class aboutUsPageSecondBlock extends StatelessWidget {
  const aboutUsPageSecondBlock({
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
            padding: EdgeInsets.only(
              left: screenWidth * 0.1,
            ),
            height: screenHeight * 2,
            child: Column(
              children: [
                Container(
                  width: screenWidth * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 75,
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
                        "Do what you can, with what you have, where you are",
                        style: StringStyleConstants.mainTitleHomePage(
                            screenHeight),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        StringConstants.aboutUsDescription,
                        style: StringStyleConstants.longTextBlock(screenHeight),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 200,
                        height: 80,
                        child: Card(
                            color: ColorConstants.yellowFocusColor,
                            child: Center(
                              child: Text(
                                "OUR MISSION",
                                style: StringStyleConstants.boldLongText(
                                    screenHeight),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Text(
                        StringConstants.aboutUsMission,
                        style: StringStyleConstants.longTextBlock(screenHeight),
                      )),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.8,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 75,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth * 0.8 * 0.46,
                            height: screenHeight * 0.3,
                            color: ColorConstants.greenBackGroundColor,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.people,
                                      size: 80,
                                      color: ColorConstants.yellowFocusColor,
                                    ),
                                    Text(
                                      "+500\npeople\nhelped",
                                      style: StringStyleConstants
                                          .whiteFeatureTitle(screenHeight),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: screenWidth * 0.8 * 0.5 * 0.002,
                          ),
                          Container(
                            width: screenWidth * 0.8 * 0.46,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                ImageConstants.woman1Image,
                                width: screenWidth * 0.8 * 0.46,
                                height: screenHeight * 0.3,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth * 0.8 * 0.46,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                ImageConstants.child1Image,
                                width: screenWidth * 0.8 * 0.46,
                                height: screenHeight * 0.3,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenWidth * 0.8 * 0.5 * 0.0002,
                          ),
                          Container(
                            width: screenWidth * 0.8 * 0.46,
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
                                      screenHeight: screenHeight * 0.8,
                                      toDoText: 'Good health and wellbeing',
                                    ),
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'Quality education',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.only(
              left: screenWidth * 0.1,
            ),
            height: screenHeight * 1,
            child: Row(
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
                        "Do what you can, with what you have, where you are",
                        style: StringStyleConstants.mainTitleHomePage(
                            screenHeight),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        StringConstants.aboutUsDescription,
                        style: StringStyleConstants.longTextBlock(screenHeight),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 200,
                        height: 80,
                        child: Card(
                            color: ColorConstants.yellowFocusColor,
                            child: Center(
                              child: Text(
                                "OUR MISSION",
                                style: StringStyleConstants.boldLongText(
                                    screenHeight),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Text(
                        StringConstants.aboutUsMission,
                        style: StringStyleConstants.longTextBlock(screenHeight),
                      )),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: screenWidth * 0.8 * 0.5 * 0.02,
                          ),
                          Container(
                            width: screenWidth * 0.8 * 0.5 * 0.4,
                            height: screenHeight * 0.3,
                            color: ColorConstants.greenBackGroundColor,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.people,
                                      size: 80,
                                      color: ColorConstants.yellowFocusColor,
                                    ),
                                    Text(
                                      "+500\npeople\nhelped",
                                      style: StringStyleConstants
                                          .whiteFeatureTitle(screenHeight),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: screenWidth * 0.8 * 0.5 * 0.02,
                          ),
                          Container(
                            width: screenWidth * 0.8 * 0.5 * 0.4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                ImageConstants.woman1Image,
                                width: screenWidth * 0.8 * 0.5 * 0.4,
                                height: screenHeight * 0.3,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: screenWidth * 0.8 * 0.5 * 0.02,
                          ),
                          Container(
                            width: screenWidth * 0.8 * 0.5 * 0.4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                ImageConstants.child1Image,
                                width: screenWidth * 0.8 * 0.5 * 0.4,
                                height: screenHeight * 0.3,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenWidth * 0.8 * 0.5 * 0.02,
                          ),
                          Container(
                            width: screenWidth * 0.8 * 0.5 * 0.4,
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
                                      toDoText: 'Good health and wellbeing',
                                    ),
                                    toDoItem(
                                      screenHeight: screenHeight,
                                      toDoText: 'Quality education',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}

class aboutUsPageFirstBlock extends StatelessWidget {
  const aboutUsPageFirstBlock({
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
            padding: EdgeInsets.only(top: 30),
            width: screenWidth,
            height: screenHeight * 0.4,
            color: ColorConstants.darkBlueBackGroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.4 * 0.3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.1,
                    ),
                    Text(
                      "About us",
                      style: StringStyleConstants.whiteQuoteTitle(screenHeight),
                    ),
                  ],
                ),
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.only(top: 30),
            width: screenWidth,
            height: screenHeight * 0.4,
            color: ColorConstants.darkBlueBackGroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.1,
                    ),
                    Image.asset(
                      ImageConstants.humbleHearLogo,
                      width: 99,
                      height: 82,
                    ),
                    Text(
                      StringConstants.humbleHearth,
                      textAlign: TextAlign.center,
                      style:
                          StringStyleConstants.humbleHearthStyle(screenHeight),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    UnSelectedMenuItem(
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
                    SelectedMenuItem(
                      screenHeight: screenHeight,
                      itemText: StringConstants.menuAboutUs,
                      route: '/about',
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.4 * 0.3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.1,
                    ),
                    Text(
                      "About us",
                      style: StringStyleConstants.whiteQuoteTitle(screenHeight),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
