import 'package:flutter/material.dart';

import '../../constants/constant.dart';
import 'icon_button.dart';

class SearchBar extends StatelessWidget {

  final bool enabled;
  final bool autoFocus;

  const SearchBar({
    Key? key, this.enabled = true, this.autoFocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            enabled: enabled,
            autofocus: autoFocus,
            decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.search_rounded,
                color: Colors.grey,
              ),
              hintText: 'Search',
              hintStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.1),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(
                  color: enabled ? primaryColor : Colors.grey.withOpacity(0.1),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.1),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const FoodeIconButton(icon: Icons.filter_list_rounded),
      ],
    );
  }
}
