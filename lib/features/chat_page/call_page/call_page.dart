import 'package:flutter/material.dart';
import 'package:foode_app/constants/constant.dart';
import 'package:foode_app/features/chat_page/call_page/end_call.dart';
import 'package:foode_app/features/components/icon_button.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  static const routeName = '/call_page';

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
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
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Container(
                width: 155,
                height: 155,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/images/fresh_salad.png'),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Text(
                'Guy Hawkins',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: primaryColor,
                    ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Ringing...',
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: Colors.grey),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FoodeIconButton(
                    icon: Icons.cancel_rounded,
                    radius: 100,
                    width: 90,
                    height: 90,
                    onTap: () => Navigator.pushReplacementNamed(context, EndCall.routeName),
                  ),
                  const FoodeIconButton(
                    icon: Icons.phone,
                    radius: 100,
                    iconColor: Colors.green,
                    backgroundColor: Colors.green,
                    width: 90,
                    height: 90,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
