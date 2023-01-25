import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../../foode.dart';
import '../../components/bottom_button.dart';
import '../register/register_screen.dart';
import 'forget_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _hidePassword = true;
  bool _isChecked = false;
  final _emailController = TextEditingController();
  String _passwordController = '';

  @override
  void initState() {
    super.initState();

    _emailController.addListener(
      () => setState(
        () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          currentFocus.unfocus();
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
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
                  height: 18,
                ),
                Text('Sign in to your account',
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
                        controller: _emailController,
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(
                            color: blackColor, fontWeight: FontWeight.w600),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          // errorText: 'Invalid Email',
                          // errorStyle:
                          //     const TextStyle(fontWeight: FontWeight.w600),
                          // label: const Text('Email or Phone Number'),
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
                          border: OutlineInputBorder(
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
                        onChanged: (value) =>
                            setState(() => _passwordController = value),
                        onSubmitted: (value) =>
                            setState(() => _passwordController = value),
                        textInputAction: TextInputAction.done,
                        style: const TextStyle(
                            color: blackColor, fontWeight: FontWeight.w600),
                        obscureText: _hidePassword,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          // errorText: 'Incorrect Password',
                          // errorStyle:
                          //     const TextStyle(fontWeight: FontWeight.w600),
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
                          border: OutlineInputBorder(
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
                              onPressed: () => setState(() {
                                    _hidePassword = !_hidePassword;
                                  }),
                              icon: _hidePassword
                                  ? const Icon(Icons.visibility_off_rounded)
                                  : const Icon(Icons.remove_red_eye_rounded)),
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
                        text: 'Sign in',
                        opacity: 0.5,
                        onTap: () => Navigator.pushNamedAndRemoveUntil(context, Foode.routeName, (route) => false),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, ForgetPassword.routeName);
                        },
                        child: Text(
                          'Forgot the password?',
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    color: primaryColor,
                                  ),
                        ),
                      ),
                      Text(
                        'or continue with',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 15,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                          Container(
                            width: 165,
                            height: 57,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFFF4F6F9)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
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
                              'Sign up',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: primaryColor),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, RegisterScreen.routeName);
                            },
                          ),
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}