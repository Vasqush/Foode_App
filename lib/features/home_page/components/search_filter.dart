import 'package:flutter/material.dart';

import '../../../constants/constant.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isSelected = !isSelected;
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : Colors.white,
          border: Border.all(color: primaryColor, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(widget.text, style: Theme.of(context).textTheme.headline4!.copyWith(color: isSelected ? Colors.white : primaryColor , fontWeight: FontWeight.bold),),
      ),
    );
  }
}
