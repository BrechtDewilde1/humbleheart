import 'package:flutter/material.dart';
import 'package:humbleheart/Widgets/projectsCard.dart';

import '../constants/image_constants.dart';
import '../constants/string_constants.dart';

class projectsPageSecondBlock extends StatelessWidget {
  const projectsPageSecondBlock({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.mobile,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return mobile
        ? Container(
            height: screenHeight * 2.5,
            child: Column(
              children: [
                SizedBox(
                  height: 75,
                ),
                Container(
                  width: screenWidth * 0.6,
                  child: Text(
                    "Our projects",
                    style: StringStyleConstants.makeADifference(
                        mobile ? screenWidth * 2 : screenHeight),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: screenWidth * 0.6,
                  child: Text(
                    StringConstants.titleProjectsPage,
                    style: StringStyleConstants.mainTitleHomePage(screenHeight),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: screenWidth * 0.6,
                  child: Text(
                    StringConstants.longTextProjectsPage,
                    style: StringStyleConstants.longTextBlock(screenHeight),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    projectsCard(
                      screenWidth: screenWidth * 2.8,
                      screenHeight: screenHeight * 1.2,
                      cardTitle: StringConstants.projectsCardSeniorWorkTitle,
                      cardDescription:
                          StringConstants.projectsCardSeniorWorkDescription,
                      cardImagePath: ImageConstants.senior3Image,
                    ),
                    projectsCard(
                      screenWidth: screenWidth * 2.8,
                      screenHeight: screenHeight * 1.2,
                      cardTitle: StringConstants.projectsCardChildrenCareTitle,
                      cardDescription:
                          StringConstants.projectsCardChildrenCareDescription,
                      cardImagePath: ImageConstants.child3Image,
                    ),
                    projectsCard(
                      screenWidth: screenWidth * 2.8,
                      screenHeight: screenHeight * 1.2,
                      cardTitle: StringConstants.projectsCardCommunityWorkTitle,
                      cardDescription:
                          StringConstants.projectsCardCommunityWorkDescription,
                      cardImagePath: ImageConstants.senior2Image,
                    ),
                  ],
                ),
              ],
            ),
          )
        : Container(
            height: screenHeight,
            child: Column(
              children: [
                SizedBox(
                  height: mobile ? 75 : 150,
                ),
                Text(
                  "Our projects",
                  style: StringStyleConstants.makeADifference(
                      mobile ? screenWidth * 2 : screenHeight),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: screenWidth * 0.6,
                  child: Text(
                    StringConstants.titleProjectsPage,
                    style: StringStyleConstants.mainTitleHomePage(screenHeight),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: screenWidth * 0.6,
                  child: Text(
                    StringConstants.longTextProjectsPage,
                    style: StringStyleConstants.longTextBlock(screenHeight),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    projectsCard(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      cardTitle: StringConstants.projectsCardSeniorWorkTitle,
                      cardDescription:
                          StringConstants.projectsCardSeniorWorkDescription,
                      cardImagePath: ImageConstants.senior3Image,
                    ),
                    projectsCard(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      cardTitle: StringConstants.projectsCardChildrenCareTitle,
                      cardDescription:
                          StringConstants.projectsCardChildrenCareDescription,
                      cardImagePath: ImageConstants.child3Image,
                    ),
                    projectsCard(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      cardTitle: StringConstants.projectsCardCommunityWorkTitle,
                      cardDescription:
                          StringConstants.projectsCardCommunityWorkDescription,
                      cardImagePath: ImageConstants.senior2Image,
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
