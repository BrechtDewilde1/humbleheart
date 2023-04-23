import 'package:flutter/material.dart';
import 'package:humbleheart/constants/color_constants.dart';

import '../constants/string_constants.dart';

class YellowButton extends StatefulWidget {
  const YellowButton({
    Key? key,
    required this.center,
    required this.width,
    required this.height,
    required this.text,
    required this.fontsize,
    required this.route,
    required this.changingColor,
  }) : super(key: key);

  final bool center;
  final double width;
  final double height;
  final double fontsize;
  final String text;
  final String route;
  final Color changingColor;

  @override
  State<YellowButton> createState() => _YellowButtonState();
}

class _YellowButtonState extends State<YellowButton> {
  // Properties that will be changed when hovering
  Color _color = Color(0xffffc500);
  double _floatingEffect = 4;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, widget.route),
      onHover: (bool hovering) {
        setState(() {
          _color = hovering ? widget.changingColor : _color = Color(0xffffc500);
          _floatingEffect = hovering ? 15 : 4;
        });
      },
      child: Row(
        mainAxisAlignment:
            widget.center ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 50),
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  blurRadius: 4,
                  offset: Offset(0, _floatingEffect),
                ),
              ],
              color: _color,
            ),
            padding: const EdgeInsets.only(
              left: 7,
              right: 8,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: StringStyleConstants.contactWritten(widget.fontsize),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
