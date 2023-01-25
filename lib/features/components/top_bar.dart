import 'package:flutter/material.dart';
import 'package:foode_app/constants/constant.dart';

import 'icon_button.dart';

class TopBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final Color iconColor;
  final Color backgroundColor;
  final double iconOpacity;
  final double backgroundOpacity;

  const TopBar({
    Key? key,
    required this.text,
    this.icon = Icons.arrow_back_ios_rounded,
    required this.onTap,
    this.iconColor = primaryColor,
    this.backgroundColor = primaryColor,
    this.iconOpacity = 1,
    this.backgroundOpacity = 0.1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FoodeIconButton(
          icon: icon,
          onTap: onTap,
          iconColor: iconColor.withOpacity(iconOpacity),
          backgroundColor: backgroundColor,
          backgroundOpacity: backgroundOpacity,
        ),
        const SizedBox(
          width: 24,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
