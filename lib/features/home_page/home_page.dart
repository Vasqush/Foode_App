import 'package:flutter/material.dart';
import 'package:foode_app/features/home_page/find_your_food.dart';
import 'package:foode_app/features/home_page/notificaton/notification.dart';
import 'package:foode_app/features/home_page/popular_menu.dart';
import 'package:foode_app/features/home_page/popular_restaurant.dart';

import '../../constants/constant.dart';
import '../components/icon_button.dart';
import 'components/menu_box.dart';
import '../components/search_bar.dart';
import 'components/menu_list.dart';
import 'data/menu_box_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const FoodeIconButton(
                          icon: Icons.fastfood_rounded,
                          backgroundOpacity: 1,
                          iconColor: Colors.white,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          'Hello, Vaneath',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        FoodeIconButton(
                          icon: Icons.notifications_active_rounded,
                          backgroundColor: Colors.grey,
                          onTap: () => Navigator.pushNamed(context, FoodeNotification.routeName),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    GestureDetector(
                      child: const SearchBar(enabled: false,),
                      onTap: () => Navigator.pushNamed(
                          context, FindYourFood.routeName),
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    specialDealWidget(context),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MenuTitle(
                title: 'Popular Restaurant',
                onPressed: () =>
                    Navigator.pushNamed(context, PopularRestaurant.routeName),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        menuBoxItem.length, (index) => MenuBox(index: index)),
                  ],
                ),
              ),
              MenuTitle(
                title: 'Popular Menu',
                onPressed: () =>
                    Navigator.pushNamed(context, PopularMenu.routeName),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    ...List.generate(5, (index) => MenuList(index: index)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container specialDealWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: primaryColor,
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/hamburger.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Column(
              children: [
                Text(
                  'Special Deal for December',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 33, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFB800),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'Buy Now',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuTitle extends StatelessWidget {
  const MenuTitle({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline2,
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressed,
            child: Text(
              'See all',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> listNavBar = ['Home', 'Order', 'Chat', 'Profile'];

List<IconData> navBarIcon = [
  Icons.home,
  Icons.shopping_basket_rounded,
  Icons.chat,
  Icons.person
];
