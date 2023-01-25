import 'package:flutter/material.dart';
import 'package:foode_app/constants/constant.dart';
import 'package:foode_app/features/chat_page/components/chat_widget.dart';
import 'package:foode_app/features/components/search_bar.dart';

import '../components/top_bar.dart';
import 'in_chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        margin: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              TopBar(
                text: 'Chat Page',
                icon: Icons.fastfood_rounded,
                iconColor: Colors.white,
                backgroundColor: primaryColor,
                backgroundOpacity: 1,
                onTap: () => null,
              ),
              const SizedBox(
                height: 32,
              ),
              const SearchBar(),
              const SizedBox(
                height: 32,
              ),
              ...List.generate(
                  10,
                  (index) => ChatWidget(
                        onTap: () =>
                            Navigator.pushNamed(context, InChat.routeName),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
