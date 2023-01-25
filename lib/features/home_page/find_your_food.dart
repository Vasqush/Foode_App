import 'package:flutter/material.dart';
import 'package:foode_app/features/components/bottom_button.dart';
import 'package:foode_app/features/components/search_bar.dart';
import 'package:foode_app/features/home_page/components/search_filter.dart';

import '../components/top_bar.dart';

class FindYourFood extends StatelessWidget {
  const FindYourFood({Key? key}) : super(key: key);

  static const routeName = '/find_your_food';

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

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                TopBar(text: 'Find your food', onTap: () => Navigator.pop(context),),
                const SizedBox(
                  height: 30,
                ),
                const SearchBar(autoFocus: true,),
                const SizedBox(
                  height: 32,
                ),
                Text('Type', style: Theme.of(context).textTheme.headline2!.copyWith(fontWeight: FontWeight.w700),),
                const SizedBox(height: 20,),
                Wrap(
                  spacing: 12,
                  runSpacing: 15,
                  children: [
                    ...List.generate(10, (index) => const SearchFilter(text: 'Vaneath')),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text('Location', style: Theme.of(context).textTheme.headline2!.copyWith(fontWeight: FontWeight.w700),),
                const SizedBox(height: 20,),
                Wrap(
                  spacing: 12,
                  runSpacing: 15,
                  children: [
                    ...List.generate(10, (index) => const SearchFilter(text: 'Vaneath')),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text('Food', style: Theme.of(context).textTheme.headline2!.copyWith(fontWeight: FontWeight.w700),),
                const SizedBox(height: 20,),
                Wrap(
                  spacing: 12,
                  runSpacing: 15,
                  children: [
                    ...List.generate(10, (index) => const SearchFilter(text: 'i')),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                BottomButton(text: 'Search', onTap: () {}),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
