import 'package:flutter/material.dart';
import 'package:foode_app/constants/constant.dart';
import 'package:foode_app/features/home_page/data/menu_list_item.dart';

class MenuList extends StatelessWidget {

  final int index;

  const MenuList({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      leading: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(menuListItem[index]['leading']),
          )
        ),
      ),
      title: Text(menuListItem[index]['title'], style: Theme.of(context).textTheme.headline2,),
      subtitle: Text(menuListItem[index]['sub-title']),
      trailing: Text(menuListItem[index]['trailing'], style: Theme.of(context).textTheme.headline1!.copyWith(color: primaryColor),),
    );
  }
}

