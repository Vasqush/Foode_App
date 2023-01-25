import 'package:flutter/material.dart';
import 'package:foode_app/features/authentication/register/payment_screen.dart';

import '../../../constants/constant.dart';
import '../../components/bottom_button.dart';
import '../../components/top_bar.dart';

class FillBioScreen extends StatefulWidget {
  const FillBioScreen({Key? key}) : super(key: key);

  static const routeName = '/fill_bio';

  @override
  State<FillBioScreen> createState() => _FillBioScreenState();
}

class _FillBioScreenState extends State<FillBioScreen> {
  final List<String> _gender = ['Male', 'Female', 'Rather Not Say'];
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            currentFocus.unfocus();
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 15,),
                  TopBar(text: 'Fill in your bio', onTap: () => Navigator.pop(context),),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    'This data will be displayed in your account profile for security',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const InputField(),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 24,
                          ),
                          Text(
                            'Nick Name',
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
                        style: const TextStyle(
                            color: blackColor, fontWeight: FontWeight.w600),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          label: const Text('Nick Name'),
                          labelStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                          hintText: 'Nick Name',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
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
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 24,
                          ),
                          Text(
                            'Phone Number',
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
                        style: const TextStyle(
                            color: blackColor, fontWeight: FontWeight.w600),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          label: const Text('Phone Number'),
                          labelStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                          hintText: 'Phone Number',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
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
                    ],
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
                        'Gender',
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
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFEBEEF2),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: DropdownButton(
                      isExpanded: true,
                      hint: const Text(
                        'Gender',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600),
                      ),
                      value: _selectedGender,
                      onChanged: (newGender) {
                        setState(() {
                          _selectedGender = newGender;
                        });
                      },
                      items: _gender.map((gender) {
                        return DropdownMenuItem(
                          value: gender,
                          child: Text(
                            gender,
                            style: const TextStyle(
                                color: blackColor, fontWeight: FontWeight.w600),
                          ),
                        );
                      }).toList(),
                      underline: Container(),
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
                        'Date of birth',
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
                    style: const TextStyle(
                        color: blackColor, fontWeight: FontWeight.w600),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: const Text('Date of birth'),
                      labelStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                      hintText: 'Date of birth',
                      hintStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
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
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 24,
                          ),
                          Text(
                            'Address',
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
                        style: const TextStyle(
                            color: blackColor, fontWeight: FontWeight.w600),
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          label: const Text('Address'),
                          labelStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                          hintText: 'Address',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
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
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BottomButton(
                    text: 'Next',
                    opacity: 0.5,
                    onTap: () => Navigator.pushNamed(context, PaymentScreen.routeName),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            Text(
              'Full Name',
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
          style: const TextStyle(
              color: blackColor, fontWeight: FontWeight.w600),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            label: const Text('Full Name'),
            labelStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600),
            hintText: 'Full Name',
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600),
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
      ],
    );
  }
}


