import 'package:flutter/material.dart';
import 'package:humbleheart/constants/string_constants.dart';

class SelectedMenuItem extends StatelessWidget {
  String itemText;
  String route;

  SelectedMenuItem({
    Key? key,
    required this.screenHeight,
    required this.itemText,
    required this.route,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Text(
          itemText,
          style: StringStyleConstants.menuItemStyleSelected(screenHeight),
        ),
      ),
    );
  }
}

class UnSelectedMenuItem extends StatelessWidget {
  String itemText;
  String route;

  UnSelectedMenuItem({
    Key? key,
    required this.screenHeight,
    required this.itemText,
    required this.route,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 8.0),
        child: Text(
          itemText,
          style: StringStyleConstants.menuItemStyleNotSelected(screenHeight),
        ),
      ),
    );
  }
}
