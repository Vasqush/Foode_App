import 'package:flutter/material.dart';

import '../components/search_bar.dart';
import '../components/top_bar.dart';
import '../home_page/components/menu_list.dart';
import '../home_page/data/menu_list_item.dart';

class FavoriteFood extends StatelessWidget {
  const FavoriteFood({Key? key}) : super(key: key);

  static const routeName = '/favorite_food';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/foode_bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              TopBar(text: 'Favorite', onTap: () => Navigator.pop(context),),
              const SizedBox(
                height: 30,
              ),
              const SearchBar(),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 30),
                  itemCount: menuListItem.length,
                  itemBuilder: (context, index) => MenuList(index: index),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

