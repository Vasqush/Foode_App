import 'package:flutter/material.dart';

import 'constants/constant.dart';
import 'features/chat_page/chat_page.dart';
import 'features/home_page/home_page.dart';
import 'features/order_page/order_page.dart';
import 'features/profile_page/profile_page.dart';

class Foode extends StatefulWidget {
  const Foode({Key? key}) : super(key: key);

  static const routeName = '/foode';

  @override
  State<Foode> createState() => _FoodeState();
}

class _FoodeState extends State<Foode> {

  int _currentIndex = 0;

  final pages = [
    const HomePage(),
    const OrderPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/foode_bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: pages[_currentIndex],
        bottomNavigationBar: foodeNavigation(displayWidth),
      ),
    );
  }

  Container foodeNavigation(double displayWidth) {
    return Container(
      margin: EdgeInsets.only(
          bottom: displayWidth * .05,
          left: displayWidth * .05,
          right: displayWidth * .05),
      height: displayWidth * .155,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
        itemCount: 4,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                width: index == _currentIndex
                    ? displayWidth * .32
                    : displayWidth * .18,
                alignment: Alignment.center,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: index == _currentIndex ? displayWidth * .12 : 0,
                  width: index == _currentIndex ? displayWidth * .32 : 0,
                  decoration: BoxDecoration(
                      color: index == _currentIndex
                          ? primaryColor.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                width: index == _currentIndex
                    ? displayWidth * .31
                    : displayWidth * .18,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width:
                          index == _currentIndex ? displayWidth * .13 : 0,
                        ),
                        AnimatedOpacity(
                          opacity: index == _currentIndex ? 1 : 0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: Text(
                            index == _currentIndex ? listNavBar[index] : '',
                            style: const TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width:
                          index == _currentIndex ? displayWidth * .03 : 20,
                        ),
                        Icon(
                          navBarIcon[index],
                          size: displayWidth * .076,
                          color: primaryColor,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

