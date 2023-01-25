import 'package:flutter/material.dart';
import '../constants/constant.dart';
import '../foode.dart';
import 'components/bottom_button.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  static const routeName = '/success';

  @override
  State<Success> createState() => _Success();
}

class _Success extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/foode_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            SizedBox(
              width: 178,
              height: 173,
              child: Image.asset('assets/images/success.png'),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Congrats!',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: primaryColor,
                  ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Your profile is ready to use',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: blackColor),
            ),
            const Spacer(),
            BottomButton(
              text: 'Go homepage',
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, Foode.routeName, (route) => false),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
