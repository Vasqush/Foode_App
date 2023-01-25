import 'package:flutter/material.dart';

import '../components/search_bar.dart';
import '../components/top_bar.dart';
import 'components/menu_box.dart';
import 'data/menu_box_items.dart';

class PopularRestaurant extends StatelessWidget {
  const PopularRestaurant({Key? key}) : super(key: key);

  static const routeName = '/popular_restaurant';

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
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                TopBar(text: 'Popular Restaurant', onTap: () => Navigator.pop(context),),
                const SizedBox(
                  height: 30,
                ),
                const SearchBar(),
                const SizedBox(
                  height: 32,
                ),
                Flexible(
                  child: GridView.count(
                    padding: const EdgeInsets.only(bottom: 30),
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: <Widget>[
                      ...List.generate(
                          menuBoxItem.length, (index) => MenuBox(index: index)),
                      ...List.generate(
                          menuBoxItem.length, (index) => MenuBox(index: index)),
                      ...List.generate(
                          menuBoxItem.length, (index) => MenuBox(index: index)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
