import 'package:flutter/material.dart';
import 'package:humbleheart/Widgets/projectDeepDive.dart';
import 'package:humbleheart/constants/color_constants.dart';
import '../Widgets/footerWidget.dart';
import '../Widgets/projectsPageFirstBlock.dart';
import '../Widgets/projectsPageQuoteBlock.dart';
import '../Widgets/projectsPageSecondBlock.dart';
import '../constants/image_constants.dart';
import '../constants/string_constants.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;
        if (screenWidth < 1160) {
          return projectPageScaffoldMobile(
              screenWidth: screenWidth, screenHeight: screenHeight);
        } else {
          return Scaffold(
            body: ListView(
              children: [
                projectsPageFirstBlock(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  mobile: false,
                ),
                projectsPageSecondBlock(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  mobile: false,
                ),
                projectsPageQuoteBlock(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  mobile: false,
                ),
                projectDeepDive(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  recentActsString: StringConstants.seniorCareAOC,
                  actDescription1: StringConstants.seniorCareAOC1Description,
                  actDescription2: StringConstants.seniorCareAOC2Description,
                  actDescription3: StringConstants.seniorCareAOC3Description,
                  actTitle1: StringConstants.seniorCareAOC1Title,
                  actTitle2: StringConstants.seniorCareAOC2Title,
                  actTitle3: StringConstants.seniorCareAOC3Title,
                  mainImage: ImageConstants.senior4Image,
                  imagePath1: ImageConstants.senior_houseRoof,
                  imagePath2: ImageConstants.seniorTransport,
                  imagePath3: ImageConstants.senior_meetGreet,
                  projectConclude: StringConstants.seniorCareClosure,
                  projectDescriptionPartOne:
                      StringConstants.seniorCareDescription,
                  projectIntroduction: StringConstants.seniorCareIntroduction,
                  projectTitle: "Senior care",
                  mobile: false,
                ),
                SizedBox(
                  height: 30,
                ),
                projectDeepDive(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  recentActsString: StringConstants.childCareAOC,
                  actDescription1: StringConstants.childCareAOC1Description,
                  actDescription2: StringConstants.childCareAOC2Description,
                  actDescription3: StringConstants.childCareAOC3Description,
                  actTitle1: StringConstants.childCareAOC1Title,
                  actTitle2: StringConstants.childCareAOC2Title,
                  actTitle3: StringConstants.childCareAOC3Title,
                  mainImage: ImageConstants.community1Image,
                  imagePath1: ImageConstants.children_house,
                  imagePath2: ImageConstants.children_chirstmas,
                  imagePath3: ImageConstants.children_weeklyVisit,
                  projectConclude: StringConstants.childCareClosure,
                  projectDescriptionPartOne:
                      StringConstants.childCareDescription,
                  projectIntroduction: StringConstants.childCareIntroduction,
                  projectTitle: "Next generation development & education",
                  mobile: false,
                ),
                SizedBox(
                  height: 30,
                ),
                projectDeepDive(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  recentActsString: StringConstants.communityCareAOC,
                  actDescription1: StringConstants.communityCareAOC1Description,
                  actDescription2: StringConstants.communityCareAOC2Description,
                  actDescription3: StringConstants.communityCareAOC3Description,
                  actTitle1: StringConstants.communityCareAOC1Title,
                  actTitle2: StringConstants.communityCareAOC2Title,
                  actTitle3: StringConstants.communityCareAOC3Title,
                  mainImage: ImageConstants.communityHeader,
                  imagePath1: ImageConstants.communityToilet,
                  imagePath2: ImageConstants.communityBlankets,
                  imagePath3: ImageConstants.communityMedicalCare,
                  projectConclude: StringConstants.communityCareClosure,
                  projectDescriptionPartOne:
                      StringConstants.communityCareDescription,
                  projectIntroduction:
                      StringConstants.communityCareIntroduction,
                  projectTitle: "Community work",
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
      },
    );
  }
}

class projectPageScaffoldMobile extends StatefulWidget {
  const projectPageScaffoldMobile({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  State<projectPageScaffoldMobile> createState() =>
      _projectPageScaffoldMobile();
}

class _projectPageScaffoldMobile extends State<projectPageScaffoldMobile> {
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
                  style: StringStyleConstants.humbleHearthStyle(
                      widget.screenHeight),
                ),
              ],
            )),
            ListTile(
              onTap: () => Navigator.pushNamed(context, "/"),
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
                style: StringStyleConstants.menuItemStyleSelected(
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
            projectsPageFirstBlock(
              screenWidth: widget.screenWidth,
              screenHeight: widget.screenHeight,
              mobile: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: projectsPageSecondBlock(
                screenWidth: widget.screenWidth,
                screenHeight: widget.screenHeight,
                mobile: true,
              ),
            ),
            projectsPageQuoteBlock(
              screenWidth: widget.screenWidth,
              screenHeight: widget.screenHeight,
              mobile: true,
            ),
            projectDeepDive(
              screenHeight: widget.screenHeight,
              screenWidth: widget.screenWidth,
              recentActsString: StringConstants.seniorCareAOC,
              actDescription1: StringConstants.seniorCareAOC1Description,
              actDescription2: StringConstants.seniorCareAOC2Description,
              actDescription3: StringConstants.seniorCareAOC3Description,
              actTitle1: StringConstants.seniorCareAOC1Title,
              actTitle2: StringConstants.seniorCareAOC2Title,
              actTitle3: StringConstants.seniorCareAOC3Title,
              mainImage: ImageConstants.senior4Image,
              imagePath1: ImageConstants.senior_houseRoof,
              imagePath2: ImageConstants.seniorTransport,
              imagePath3: ImageConstants.senior_meetGreet,
              projectConclude: StringConstants.seniorCareClosure,
              projectDescriptionPartOne: StringConstants.seniorCareDescription,
              projectIntroduction: StringConstants.seniorCareIntroduction,
              projectTitle: "Senior care",
              mobile: true,
            ),
            SizedBox(
              height: 30,
            ),
            projectDeepDive(
              screenHeight: widget.screenHeight,
              screenWidth: widget.screenWidth,
              recentActsString: StringConstants.childCareAOC,
              actDescription1: StringConstants.childCareAOC1Description,
              actDescription2: StringConstants.childCareAOC2Description,
              actDescription3: StringConstants.childCareAOC3Description,
              actTitle1: StringConstants.childCareAOC1Title,
              actTitle2: StringConstants.childCareAOC2Title,
              actTitle3: StringConstants.childCareAOC3Title,
              mainImage: ImageConstants.community1Image,
              imagePath1: ImageConstants.children_house,
              imagePath2: ImageConstants.children_chirstmas,
              imagePath3: ImageConstants.children_weeklyVisit,
              projectConclude: StringConstants.childCareClosure,
              projectDescriptionPartOne: StringConstants.childCareDescription,
              projectIntroduction: StringConstants.childCareIntroduction,
              projectTitle: "Next generation development & education",
              mobile: true,
            ),
            SizedBox(
              height: 30,
            ),
            projectDeepDive(
              screenHeight: widget.screenHeight,
              screenWidth: widget.screenWidth,
              recentActsString: StringConstants.communityCareAOC,
              actDescription1: StringConstants.communityCareAOC1Description,
              actDescription2: StringConstants.communityCareAOC2Description,
              actDescription3: StringConstants.communityCareAOC3Description,
              actTitle1: StringConstants.communityCareAOC1Title,
              actTitle2: StringConstants.communityCareAOC2Title,
              actTitle3: StringConstants.communityCareAOC3Title,
              mainImage: ImageConstants.communityHeader,
              imagePath1: ImageConstants.communityToilet,
              imagePath2: ImageConstants.communityBlankets,
              imagePath3: ImageConstants.communityMedicalCare,
              projectConclude: StringConstants.communityCareClosure,
              projectDescriptionPartOne:
                  StringConstants.communityCareDescription,
              projectIntroduction: StringConstants.communityCareIntroduction,
              projectTitle: "Community work",
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
