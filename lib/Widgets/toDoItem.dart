import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../constants/string_constants.dart';

class toDoItem extends StatelessWidget {
  toDoItem({
    Key? key,
    required this.toDoText,
    required this.screenHeight,
  }) : super(key: key);

  String toDoText;
  double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Icon(
            Icons.done,
            color: ColorConstants.greenBackGroundColor,
          ),
          Text(
            toDoText,
            style: StringStyleConstants.toDoItemTextStyle(screenHeight),
          )
        ],
      ),
    );
  }
}
