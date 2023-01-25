import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../components/top_bar.dart';
import 'done_set_location.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  static const routeName = 'set_location';

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
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
                height: 25,
              ),
              TopBar(
                text: 'Set your location',
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
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:
                          _value == 1 ? primaryColor : const Color(0xFFEBEEF2),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          child: const Icon(
                            Icons.location_on_sharp,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        'Set location',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                borderRadius: BorderRadius.circular(32),
                onTap: () {
                  Navigator.pushNamed(context, DoneSetLocation.routeName);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 380,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: _value != 0
                        ? primaryColor
                        : primaryColor.withOpacity(0.5),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
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
