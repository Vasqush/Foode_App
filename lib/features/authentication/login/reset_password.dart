import 'package:flutter/material.dart';
import 'package:custom_check_box/custom_check_box.dart';

import '../../../constants/constant.dart';
import '../../components/bottom_button.dart';
import '../../components/top_bar.dart';
import '../../success.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  static const routeName = 'reset_password';

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _obscurePassword1 = true;
  bool _obscurePassword2 = true;

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              TopBar(text: 'Reset password', onTap: () => Navigator.pop(context),),
              const SizedBox(
                height: 28,
              ),
              Text(
                'Create a new password',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    'New Password',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const Text(
                    '*',
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                obscureText: _obscurePassword1,
                obscuringCharacter: '*',
                style: const TextStyle(
                    color: blackColor, fontWeight: FontWeight.w600),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: const Text('New Password'),
                  labelStyle: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                  hintText: 'New Password',
                  hintStyle: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(
                      color: Color(0xFFEBEEF2),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(
                      color: primaryColor,
                    ),
                  ),
                  suffixIcon: IconButton(
                    enableFeedback: false,
                    icon: _obscurePassword1
                        ? const Icon(Icons.visibility_off_rounded)
                        : const Icon(Icons.remove_red_eye_rounded),
                    onPressed: () {
                      setState(() {
                        _obscurePassword1 = !_obscurePassword1;
                      });
                    },
                  ),
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    'Confirm New Password',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const Text(
                    '*',
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                obscureText: _obscurePassword2,
                obscuringCharacter: '*',
                style: const TextStyle(
                    color: blackColor, fontWeight: FontWeight.w600),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: const Text('Confirm New Password'),
                  labelStyle: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                  hintText: 'Confirm New Password',
                  hintStyle: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(
                      color: Color(0xFFEBEEF2),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(
                      color: primaryColor,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: _obscurePassword2
                        ? const Icon(Icons.visibility_off_rounded)
                        : const Icon(Icons.remove_red_eye_rounded),
                    onPressed: () {
                      setState(() {
                        _obscurePassword2 = !_obscurePassword2;
                      });
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 4,
                  ),
                  CustomCheckBox(
                    borderRadius: 4,
                    borderColor: primaryColor,
                    checkedFillColor: primaryColor,
                    value: _isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        _isChecked = newValue;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: Theme.of(context).textTheme.headline4,
                  )
                ],
              ),
              const Spacer(),
              BottomButton(
                text: 'Save',
                onTap: () => Navigator.pushNamed(context, Success.routeName),
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
