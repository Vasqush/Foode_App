import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class FoodeIconButton extends StatelessWidget {
  const FoodeIconButton(
      {Key? key,
      required this.icon,
      this.iconColor = primaryColor,
      this.iconOpacity = 1,
      this.backgroundColor = primaryColor,
      this.backgroundOpacity = 0.1,
      this.radius = 10,
      this.onTap,
      this.width = 45,
      this.height = 45})
      : super(key: key);

  final IconData icon;
  final Color iconColor;
  final double iconOpacity;
  final Color backgroundColor;
  final double backgroundOpacity;
  final double radius;
  final VoidCallback? onTap;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor.withOpacity(backgroundOpacity),
        ),
        child: Icon(
          icon,
          color: iconColor.withOpacity(iconOpacity),
        ),
      ),
    );
  }
}
