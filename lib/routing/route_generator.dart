import 'package:flutter/material.dart';
import 'package:foode_app/features/chat_page/call_page/call_page.dart';
import 'package:foode_app/features/chat_page/call_page/end_call.dart';
import 'package:foode_app/features/chat_page/in_chat.dart';
import 'package:foode_app/features/home_page/find_your_food.dart';
import 'package:foode_app/features/home_page/notificaton/notification.dart';
import 'package:foode_app/features/home_page/popular_menu.dart';
import 'package:foode_app/features/profile_page/favorite_food.dart';

import '../features/authentication/login/forget_password.dart';
import '../features/authentication/login/login_screen.dart';
import '../features/authentication/login/reset_password.dart';
import '../features/authentication/login/verification_screen.dart';
import '../features/authentication/register/done_set_location.dart';
import '../features/authentication/register/done_upload_photo.dart';
import '../features/authentication/register/fill_bio_screen.dart';
import '../features/authentication/register/payment_screen.dart';
import '../features/authentication/register/register_screen.dart';
import '../features/authentication/register/set_location.dart';
import '../features/authentication/register/upload_photo.dart';
import '../features/get_started.dart';
import '../features/home_page/home_page.dart';
import '../features/home_page/popular_restaurant.dart';
import '../features/splash_screen.dart';
import '../features/success.dart';
import '../foode.dart';


class RouteGenerator {
  static Route<RouteSettings> onGenerateRoute(RouteSettings settings) {
    switch(settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case GetStartedScreen.routeName:
        return MaterialPageRoute(builder: (context) => const GetStartedScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RegisterScreen.routeName:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case FillBioScreen.routeName:
        return MaterialPageRoute(builder: (context) => const FillBioScreen());
      case PaymentScreen.routeName:
        return MaterialPageRoute(builder: (context) => const PaymentScreen());
      case UploadPhoto.routeName:
        return MaterialPageRoute(builder: (context) => const UploadPhoto());
      case DoneUploadPhoto.routeName:
        return MaterialPageRoute(builder: (context) => const DoneUploadPhoto());
      case SetLocation.routeName:
        return MaterialPageRoute(builder: (context) => const SetLocation());
      case DoneSetLocation.routeName:
        return MaterialPageRoute(builder: (context) => const DoneSetLocation());
      case Success.routeName:
        return MaterialPageRoute(builder: (context) => const Success());
      case ForgetPassword.routeName:
        return MaterialPageRoute(builder: (context) => const ForgetPassword());
      case Verification.routeName:
        return MaterialPageRoute(builder: (context) => const Verification());
      case ResetPassword.routeName:
        return MaterialPageRoute(builder: (context) => const ResetPassword());
      case HomePage.routeName:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case Foode.routeName:
        return MaterialPageRoute(builder: (context) => const Foode());
      case PopularRestaurant.routeName:
        return MaterialPageRoute(builder: (context) => const PopularRestaurant());
      case PopularMenu.routeName:
        return MaterialPageRoute(builder: (context) => const PopularMenu());
      case FindYourFood.routeName:
        return MaterialPageRoute(builder: (context) => const FindYourFood());
      case InChat.routeName:
        return MaterialPageRoute(builder: (context) => const InChat());
      case CallPage.routeName:
        return MaterialPageRoute(builder: (context) => const CallPage());
      case EndCall.routeName:
        return MaterialPageRoute(builder: (context) => const EndCall());
      case FoodeNotification.routeName:
        return MaterialPageRoute(builder: (context) => const FoodeNotification());
      case FavoriteFood.routeName:
        return MaterialPageRoute(builder: (context) => const FavoriteFood());
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
