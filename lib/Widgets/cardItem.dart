import 'package:flutter/material.dart';
import 'package:humbleheart/constants/color_constants.dart';
import 'package:humbleheart/constants/string_constants.dart';

class cardItem extends StatelessWidget {
  const cardItem({
    Key? key,
    required this.screenHeight,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final double screenHeight;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 8),
          child: Icon(
            icon,
            color: ColorConstants.yellowFocusColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            text,
            style: StringStyleConstants.toDoItemTextStyle(screenHeight),
          ),
        )
      ],
    );
  }
}
