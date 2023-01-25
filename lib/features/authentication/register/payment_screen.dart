import 'package:flutter/material.dart';
import 'package:foode_app/features/authentication/register/upload_photo.dart';

import '../../../constants/constant.dart';
import '../../components/bottom_button.dart';
import '../../components/top_bar.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  static const routeName = '/payment';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                TopBar(
                  text: 'Payment method',
                  onTap: () => Navigator.pop(context),
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  'This data will be displayed in your account profile for security',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _value = 1;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 130),
                    width: 380,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: _value == 1
                              ? primaryColor
                              : const Color(0xFFEBEEF2),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/paypal_logo.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    setState(() {
                      _value = 2;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    width: 380,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: _value == 2
                                ? primaryColor
                                : const Color(0xFFEBEEF2)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/visa_logo.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _value = 3;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 125),
                    width: 380,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: _value == 3
                                ? primaryColor
                                : const Color(0xFFEBEEF2)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/payoneer_logo.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                BottomButton(
                  text: 'Next',
                  opacity: _value != 0 ? 1 : 0.5,
                  onTap: () =>
                      Navigator.pushNamed(context, UploadPhoto.routeName),
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
