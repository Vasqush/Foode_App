import 'package:flutter/material.dart';
import 'authentication/login/login_screen.dart';
import 'components/bottom_button.dart';

// class GetStartedPageArguments {
//   final String title;
//   final String description;
//
//   GetStartedPageArguments({required this.title, required this.description});
// }

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({
    Key? key,
    // required this.arguments,
  }) : super(key: key);

  static const String routeName = '/get_started';
  // final GetStartedPageArguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/get_started_bg.png'),
              fit: BoxFit.fitWidth),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Foode',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: Colors.white),
              ),
              Text(
                'The best food ordering and delivery app of the century',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              BottomButton(
                text: 'Get Started',
                onTap: () => Navigator.pushReplacementNamed(
                    context, LoginScreen.routeName),
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
