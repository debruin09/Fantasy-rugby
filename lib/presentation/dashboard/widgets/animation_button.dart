import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final Function onClick;
  final Icon icon;
  final double width;
  final double height;
  final Color color;
  MenuButton({
    Key key,
    this.onClick,
    this.icon,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: IconButton(
        icon: icon,
        onPressed: onClick,
      ),
    );
  }
}
