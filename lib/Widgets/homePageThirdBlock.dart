import 'package:flutter/material.dart';
import 'package:humbleheart/constants/color_constants.dart';
import 'package:humbleheart/constants/string_constants.dart';

import '../constants/image_constants.dart';

class homePageThirdBlock extends StatelessWidget {
  const homePageThirdBlock({
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
            width: screenWidth,
            height: screenHeight * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InteractiveImage(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  message: "Children",
                  image: ImageConstants.child1Image,
                  appearText: "Children care",
                  imageWidth: 0.3,
                  mobile: true,
                ),
                InteractiveImage(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  message: "Community",
                  image: ImageConstants.community1Image,
                  appearText: "Communnity",
                  imageWidth: 0.4,
                  mobile: true,
                ),
                InteractiveImage(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  message: "Seniors",
                  image: ImageConstants.senior2Image,
                  appearText: "Senior care",
                  imageWidth: 0.3,
                  mobile: true,
                ),
              ],
            ),
          )
        : Container(
            width: screenWidth,
            height: screenHeight * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InteractiveImage(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  message: "Children",
                  image: ImageConstants.child1Image,
                  appearText: "Children care",
                  imageWidth: 0.3,
                  mobile: false,
                ),
                InteractiveImage(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  message: "Community",
                  image: ImageConstants.community1Image,
                  appearText: "Communnity",
                  imageWidth: 0.4,
                  mobile: false,
                ),
                InteractiveImage(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  message: "Seniors",
                  image: ImageConstants.senior2Image,
                  appearText: "Senior care",
                  imageWidth: 0.3,
                  mobile: false,
                ),
              ],
            ),
          );
  }
}

class InteractiveImage extends StatefulWidget {
  const InteractiveImage({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.message,
    required this.image,
    required this.appearText,
    required this.imageWidth,
    required this.mobile,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String message;
  final String image;
  final String appearText;
  final double imageWidth;
  final bool mobile;

  @override
  State<InteractiveImage> createState() => _InteractiveImageState();
}

class _InteractiveImageState extends State<InteractiveImage> {
  // properties to change when we are hovering
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (a) {
          setState(() {
            hovering = true;
          });
        },
        onExit: (a) {
          setState(() {
            hovering = false;
          });
        },
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, "/projects"),
          child: Stack(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 50),
                child: Banner(
                  message: widget.message,
                  location: BannerLocation.topEnd,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 50),
                    opacity: hovering ? 0.5 : 1,
                    child: Image.asset(
                      widget.image,
                      height: widget.screenHeight * 0.4,
                      width: widget.screenWidth * widget.imageWidth,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 50),
                opacity: hovering ? 1 : 0,
                child: Container(
                  width: widget.screenWidth * widget.imageWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: ColorConstants.yellowFocusColor,
                        size: widget.screenHeight * 0.2,
                      ),
                      Text(
                        widget.appearText,
                        style: StringStyleConstants.humbleHearthStyle(
                            widget.screenHeight),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
