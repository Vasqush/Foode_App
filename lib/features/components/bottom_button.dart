import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final double opacity;
  final VoidCallback onTap;

  const BottomButton({
    Key? key,
    required this.text,
    this.opacity = 1,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 380,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Theme.of(context).primaryColor.withOpacity(opacity),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
