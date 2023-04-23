import 'package:flutter/material.dart';
import 'package:humbleheart/constants/color_constants.dart';
import 'package:humbleheart/constants/string_constants.dart';
import 'package:humbleheart/constants/image_constants.dart';
import 'package:humbleheart/Widgets/menuItem.dart';

class projectsPageFirstBlock extends StatelessWidget {
  const projectsPageFirstBlock({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.mobile,
  }) : super(key: key);

  final double screenWidth;
  final bool mobile;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      width: screenWidth,
      height: screenHeight * 0.4,
      color: ColorConstants.darkBlueBackGroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          mobile
              ? Row(
                  children: [],
                )
              : Row(
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
                    SelectedMenuItem(
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
            height: screenHeight * 0.4 * 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: screenWidth * 0.1,
              ),
              Text(
                StringConstants.howCanYouHelpTitle,
                style: StringStyleConstants.whiteQuestionTitle(screenHeight),
              ),
            ],
          )
        ],
      ),
    );
  }
}
