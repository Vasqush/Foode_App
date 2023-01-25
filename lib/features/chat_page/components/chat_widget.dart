import 'package:flutter/material.dart';
import 'package:foode_app/constants/constant.dart';
import 'package:foode_app/features/chat_page/in_chat.dart';
import 'package:foode_app/features/components/icon_button.dart';

import '../call_page/call_page.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key, this.inChat = false, required this.onTap})
      : super(key: key);

  final VoidCallback onTap;

  final bool inChat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        leading: Container(
          width: 62,
          height: 62,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: primaryColor,
            // image: DecorationImage(
            //   image: AssetImage('assets/images/hamburger.png'),
            // )
          ),
        ),
        title: Text(
          'haha',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.black),
        ),
        subtitle: Text(
          'no des',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.grey),
        ),
        trailing: inChat
            ? FoodeIconButton(
                icon: Icons.call,
                radius: 100,
                onTap: () => Navigator.pushNamed(context, CallPage.routeName),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      '3',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Text(
                    '13:00',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: neutral5Color),
                  ),
                ],
              ),
      ),
    );
  }
}
