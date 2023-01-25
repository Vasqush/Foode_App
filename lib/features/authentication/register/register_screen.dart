import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import '../../../constants/constant.dart';
import '../../components/bottom_button.dart';
import '../login/login_screen.dart';
import 'fill_bio_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static const routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          currentFocus.unfocus();
        },
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 192,
                    width: 192,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/foode_logo.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text('Sign up for free',
                      style: Theme.of(context).textTheme.headline2),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 24,
                            ),
                            Text(
                              'Email',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const Text(
                              '*',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          style: const TextStyle(
                              color: blackColor, fontWeight: FontWeight.w600),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: const Text('Email or Phone Number'),
                            labelStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                            hintText: 'Email or Phone Number',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
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
                          ),
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
                              'Password',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const Text(
                              '*',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          style: const TextStyle(
                              color: blackColor, fontWeight: FontWeight.w600),
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            label: const Text('Password'),
                            labelStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
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
                            suffixIcon: const Icon(Icons.remove_red_eye),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                        const SizedBox(
                          height: 10,
                        ),
                        BottomButton(
                          text: 'Sign Up',
                          opacity: 0.5,
                          onTap: () => Navigator.pushNamed(context, FillBioScreen.routeName),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'or continue with',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 165,
                              height: 57,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFF4F6F9)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/facebook_logo.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          'Facebook',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 165,
                              height: 57,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFF4F6F9)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/google_logo.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          'Google',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: neutral5Color,
                                      fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            TextButton(
                              child: Text(
                                'Sign in',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: primaryColor),
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, LoginScreen.routeName);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
