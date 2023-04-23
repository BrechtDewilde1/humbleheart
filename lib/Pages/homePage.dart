import 'package:flutter/material.dart';
import 'package:humbleheart/constants/color_constants.dart';
import 'package:humbleheart/constants/string_constants.dart';
import 'package:humbleheart/constants/image_constants.dart';
import '../Widgets/footerWidget.dart';
import '../Widgets/homePageFirstBlock.dart';
import '../Widgets/homePageSecondBlock.dart';
import '../Widgets/homePageThirdBlock.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;
      double screenHeight = constraints.maxHeight;

      if (screenWidth < 1160) {
        return homePageScaffoldMobile(
            screenWidth: screenWidth, screenHeight: screenHeight);
      } else {
        return Scaffold(
          body: ListView(
            children: [
              homePageFirstBlock(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                mobile: false,
              ),
              homePageSecondBlock(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                mobile: false,
              ),
              homePageThirdBlock(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                mobile: false,
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

class homePageScaffoldMobile extends StatefulWidget {
  const homePageScaffoldMobile({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  State<homePageScaffoldMobile> createState() => _homePageScaffoldMobileState();
}

class _homePageScaffoldMobileState extends State<homePageScaffoldMobile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstants.yellowBackGroundColor,
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
                style: StringStyleConstants.menuItemStyleSelected(
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
                style: StringStyleConstants.menuItemStyleNotSelected(
                    widget.screenHeight),
              ),
            ),
          ]),
        ),
        body: ListView(
          children: [
            homePageFirstBlock(
              screenWidth: widget.screenWidth,
              screenHeight: widget.screenHeight,
              mobile: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: homePageSecondBlock(
                screenWidth: widget.screenWidth,
                screenHeight: widget.screenHeight,
                mobile: true,
              ),
            ),
            homePageThirdBlock(
              screenWidth: widget.screenWidth,
              screenHeight: widget.screenHeight,
              mobile: true,
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
