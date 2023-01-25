import 'package:flutter/material.dart';
import 'package:foode_app/features/chat_page/components/chat_widget.dart';
import 'package:foode_app/features/components/search_bar.dart';
import 'package:foode_app/features/components/top_bar.dart';

class FoodeNotification extends StatelessWidget {
  const FoodeNotification({Key? key}) : super(key: key);

  static const routeName = '/notification';

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
              const SizedBox(height: 70,),
              TopBar(text: 'Notification', onTap: () => Navigator.pop(context)),
              const SizedBox(height: 35,),
              const SearchBar(),
              const SizedBox(height: 32,),
              ...List.generate(5, (index) => ChatWidget(onTap: () {})),
            ],
          ),
        ),
      ),
    );
  }
}
