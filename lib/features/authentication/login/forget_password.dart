import 'package:flutter/material.dart';
import 'package:foode_app/features/authentication/login/verification_screen.dart';

import '../../../constants/constant.dart';
import '../../components/bottom_button.dart';
import '../../components/top_bar.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  static const routeName = 'forget_password';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TopBar(text: 'Forgot password', onTap: () => Navigator.pop(context),),
              const SizedBox(
                height: 28,
              ),
              Text(
                'Select which contact details should we use to reset your password',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => setState(() {
                  _value = 1;
                }),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: _value == 1
                            ? primaryColor
                            : const Color(0xFFEBEEF2),
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: primaryColor.withOpacity(0.1),
                        child: const Icon(
                          Icons.message_rounded,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    title: const Text('via SMS:'),
                    subtitle: Text(
                      '+855 9******64',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => setState(() {
                  _value = 2;
                }),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: _value == 2
                            ? primaryColor
                            : const Color(0xFFEBEEF2),
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: primaryColor.withOpacity(0.1),
                        child: const Icon(
                          Icons.mail_rounded,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    title: const Text('via Email:'),
                    subtitle: Text(
                      'va***@gmail.com',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              BottomButton(
                text: 'Next',
                opacity: _value != 0 ? 1 : 0.5,
                onTap: () =>
                    Navigator.pushNamed(context, Verification.routeName),
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
