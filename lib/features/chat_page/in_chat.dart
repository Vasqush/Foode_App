import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode_app/constants/constant.dart';
import 'package:foode_app/features/chat_page/call_page/call_page.dart';
import 'package:foode_app/features/chat_page/components/chat_widget.dart';
import 'package:foode_app/features/components/top_bar.dart';

class InChat extends StatefulWidget {
  const InChat({Key? key}) : super(key: key);

  static const routeName = '/in_chat';

  @override
  State<InChat> createState() => _InChatState();
}

class _InChatState extends State<InChat> {
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
              TopBar(text: 'haha', onTap: () => Navigator.pop(context)),
              const SizedBox(
                height: 20,
              ),
              ChatWidget(
                onTap: () => null,
                inChat: true,
              ),
              const SizedBox(
                height: 25,
              ),
              const Expanded(child: Text('Vaneath is here')),
              const Spacer(),
              TextField(
                style: Theme.of(context).textTheme.headline4,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                  hintText: 'Type message...',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(color: primaryColor),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send_rounded),
                    color: primaryColor,
                    onPressed: (){},
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
