import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../components/bottom_button.dart';
import '../../components/top_bar.dart';
import '../../success.dart';

class DoneSetLocation extends StatefulWidget {
  const DoneSetLocation({Key? key}) : super(key: key);

  static const routeName = 'done_set_location';

  @override
  State<DoneSetLocation> createState() => _DoneSetLocationState();
}

class _DoneSetLocationState extends State<DoneSetLocation> {
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
              TopBar(text: 'Set your location', onTap: () => Navigator.pop(context),),
              const SizedBox(
                height: 28,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 24,
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 460,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/map.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    width: 80,
                    height: 80,
                    top: 135,
                    left: 140,
                    child: CircleAvatar(
                      backgroundColor: primaryColor.withOpacity(0.1),
                      child: const Icon(
                        Icons.location_on,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: primaryColor),
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: primaryColor.withOpacity(0.1),
                    child: const Icon(
                      Icons.location_on,
                      color: primaryColor,
                    ),
                  ),
                  title: const Text('Location'),
                  subtitle: Text(
                    'Trea 3 St. 61',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  trailing: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              BottomButton(
                text: 'Next',
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
