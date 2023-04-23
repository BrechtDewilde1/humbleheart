import 'package:flutter/material.dart';
import 'package:humbleheart/constants/color_constants.dart';
import 'package:humbleheart/constants/string_constants.dart';
import 'package:humbleheart/constants/image_constants.dart';
import 'package:humbleheart/Widgets/menuItem.dart';

import '../Widgets/homeStayFeature.dart';

class HomeStayPage extends StatelessWidget {
  const HomeStayPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;
      double screenHeight = constraints.maxHeight;
      if (screenWidth < 1160) {
        return homeStayScaffoldMobile(
            screenWidth: screenWidth, screenHeight: screenHeight);
      } else {
        return Scaffold(
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                width: screenWidth,
                height: screenHeight * 1.7,
                color: ColorConstants.darkBlueBackGroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Menu
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
                          style: StringStyleConstants.humbleHearthStyle(
                              screenHeight),
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
                        SelectedMenuItem(
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
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.1,
                        ),
                        Container(
                          width: screenWidth * 0.5,
                          height: screenHeight * 1.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StringConstants.homeStayTitle,
                                style: StringStyleConstants.whiteQuoteTitle(
                                    screenHeight),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                StringConstants.homeStayDescription,
                                style: StringStyleConstants.greyTextBlock(
                                    screenHeight),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Container(
                                width: screenWidth * 0.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    homeStayFeature(
                                      screenWidth: screenWidth,
                                      screenHeight: screenHeight,
                                      icon: Icons.shower_sharp,
                                      featureTitle: StringConstants.feature1,
                                      featureDescription:
                                          StringConstants.feature1Description,
                                      mobile: false,
                                    ),
                                    homeStayFeature(
                                      screenWidth: screenWidth,
                                      screenHeight: screenHeight,
                                      icon: Icons.wifi,
                                      featureTitle: StringConstants.feature2,
                                      featureDescription:
                                          StringConstants.feature2Description,
                                      mobile: false,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Container(
                                width: screenWidth * 0.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    homeStayFeature(
                                      screenWidth: screenWidth,
                                      screenHeight: screenHeight,
                                      icon: Icons.rice_bowl,
                                      featureTitle: StringConstants.feature3,
                                      featureDescription:
                                          StringConstants.feature3Description,
                                      mobile: false,
                                    ),
                                    homeStayFeature(
                                      screenWidth: screenWidth,
                                      screenHeight: screenHeight,
                                      icon: Icons.travel_explore,
                                      featureTitle: StringConstants.feature4,
                                      featureDescription:
                                          StringConstants.feature4Description,
                                      mobile: false,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.05,
                        ),
                        Container(
                            width: screenWidth * 0.25,
                            child: Image.asset(
                              ImageConstants.houseImage,
                              height: screenHeight * 0.8,
                              fit: BoxFit.fill,
                            )),
                        SizedBox(
                          width: screenWidth * 0.1,
                        ),
                      ],
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

class homeStayScaffoldMobile extends StatefulWidget {
  const homeStayScaffoldMobile({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  State<homeStayScaffoldMobile> createState() => _homeStayScaffoldMobileState();
}

class _homeStayScaffoldMobileState extends State<homeStayScaffoldMobile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
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
                style:
                    StringStyleConstants.humbleHearthStyle(widget.screenHeight),
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
              style: StringStyleConstants.menuItemStyleSelected(
                  widget.screenHeight),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/about"),
            title: Text(
              "About",
              style: StringStyleConstants.menuItemStyleNotSelected(
                  widget.screenHeight),
            ),
          ),
        ]),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            width: widget.screenWidth,
            height: widget.screenHeight * 1.7,
            color: ColorConstants.darkBlueBackGroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Menu

                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: widget.screenWidth * 0.1,
                    ),
                    Container(
                      width: widget.screenWidth * 0.7,
                      height: widget.screenWidth * 1.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringConstants.homeStayTitle,
                            style: StringStyleConstants.whiteQuoteTitle(
                                widget.screenWidth),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            StringConstants.homeStayDescription,
                            style: StringStyleConstants.greyTextBlock(
                                widget.screenHeight),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Container(
                            width: widget.screenWidth * 0.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                homeStayFeature(
                                  screenWidth: widget.screenWidth,
                                  screenHeight: widget.screenWidth,
                                  icon: Icons.shower_sharp,
                                  featureTitle: StringConstants.feature1,
                                  featureDescription:
                                      StringConstants.feature1Description,
                                  mobile: true,
                                ),
                                homeStayFeature(
                                  screenWidth: widget.screenWidth,
                                  screenHeight: widget.screenWidth,
                                  icon: Icons.wifi,
                                  featureTitle: StringConstants.feature2,
                                  featureDescription:
                                      StringConstants.feature2Description,
                                  mobile: true,
                                ),
                                homeStayFeature(
                                  screenWidth: widget.screenWidth,
                                  screenHeight: widget.screenWidth,
                                  icon: Icons.rice_bowl,
                                  featureTitle: StringConstants.feature3,
                                  featureDescription:
                                      StringConstants.feature3Description,
                                  mobile: true,
                                ),
                                homeStayFeature(
                                  screenWidth: widget.screenWidth,
                                  screenHeight: widget.screenWidth,
                                  icon: Icons.travel_explore,
                                  featureTitle: StringConstants.feature4,
                                  featureDescription:
                                      StringConstants.feature4Description,
                                  mobile: true,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
