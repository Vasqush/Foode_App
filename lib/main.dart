import 'package:flutter/material.dart';
import 'package:foode_app/routing/route_generator.dart';

import 'constants/constant.dart';
import 'features/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'Source Sans Pro',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: blackColor,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23,
            color: blackColor,
          ),
          headline3: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: neutral1Color,
          ),
          headline4: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: neutral1Color,
          ),
          headline5: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 14, color: neutral1Color),
          headline6: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 11, color: neutral1Color),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: secondaryColor,
          tertiary: tertiaryColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Foode App',
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
