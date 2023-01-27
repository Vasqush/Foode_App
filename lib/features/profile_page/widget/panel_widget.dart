import 'package:flutter/material.dart';
import 'package:foode_app/constants/constant.dart';
import 'package:foode_app/features/components/icon_button.dart';
import 'package:foode_app/features/home_page/home_page.dart';
import 'package:foode_app/features/profile_page/favorite_food.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  const PanelWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      controller: controller,
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              alignment: Alignment.center,
              width: 120,
              height: 25,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow, width: 2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                'Member Gold',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.yellow),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            'Vaneath',
            style: Theme.of(context).textTheme.headline1,
          ),
          subtitle: Text(
            'vaneathzz@gmail.com',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.grey),
          ),
          trailing: const FoodeIconButton(
            icon: Icons.edit,
            radius: 100,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/voucher.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              'You have 3 vouchers',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Text(
              'Favorite',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, FavoriteFood.routeName),
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
        const SizedBox(
          height: 24,
        ),
        ...List.generate(10, (index) => _buildFavoriteList(context)),
      ],
    );
  }

  ListTile _buildFavoriteList(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        leading: Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fresh_salad.png'),
            ),
          ),
        ),
        title: Text(
          "Green Salad",
          style: Theme.of(context).textTheme.headline4,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Lovy Food",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.grey),
            ),
            Text(
              "\$12",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: primaryColor),
            ),
          ],
        ),
        trailing: Icon(
          Icons.favorite_rounded,
          color: primaryColor,
        ),
      );
  }
}
