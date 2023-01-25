import 'package:flutter/material.dart';

import '../data/menu_box_items.dart';

class MenuBox extends StatelessWidget {
  const MenuBox({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      width: 160,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              blurRadius: 5,
              offset: const Offset(1, 2), // Shadow position
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(menuBoxItem[index]['logo']),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            menuBoxItem[index]['name'],
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: 4,
          ),
          const Text('10 mins'),
        ],
      ),
    );
  }
}