import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foode_app/features/authentication/login/reset_password.dart';

import '../../../constants/constant.dart';
import '../../components/bottom_button.dart';
import '../../components/top_bar.dart';


class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  static const routeName = 'verification';

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              TopBar(text: 'Verification', onTap: () => Navigator.pop(context),),
              const Spacer(),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Code has been send to +855 9*******1',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          4,
                          (index) => buildOptBox(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Resend code in ',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          '33 ',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: primaryColor),
                        ),
                        Text(
                          's',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              BottomButton(
                text: 'Next',
                onTap: () =>
                    Navigator.pushNamed(context, ResetPassword.routeName),
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

  SizedBox buildOptBox(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 68,
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline6,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
