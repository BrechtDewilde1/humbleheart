import 'package:flutter/material.dart';
import 'cardItem.dart';

class footerWidget extends StatelessWidget {
  const footerWidget({
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
    return Container(
      height: screenHeight * 0.5 * 0.5,
      width: mobile ? screenWidth * 0.8 : screenWidth * 0.5 * 0.5,
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cardItem(
              screenHeight: screenHeight,
              icon: Icons.pin_drop,
              text: 'Bharatpur 27, Meghauli, Chitwan, Nepal',
            ),
            cardItem(
              screenHeight: screenHeight,
              icon: Icons.mail,
              text: 'humbleheartnepal@gmail.com',
            ),
            cardItem(
              screenHeight: screenHeight,
              icon: Icons.phone,
              text: '00977 9845 97441',
            ),
          ],
        ),
      ),
    );
  }
}
