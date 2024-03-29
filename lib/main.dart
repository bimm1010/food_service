import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/pages/featuredPartners/main_featured_partners.dart';
import 'package:tamang_food_service/pages/locationScreen/find_location.dart';
import 'package:tamang_food_service/pages/createAccScreen/login_number_phone.dart';
import 'package:tamang_food_service/pages/createAccScreen/verify_phone_number.dart';
import 'package:tamang_food_service/pages/mainPage/filter/filter.dart';
import 'package:tamang_food_service/pages/mainPage/home_screen.dart';
import 'package:tamang_food_service/pages/profileScreen/subProfileScreen/change_password_screen.dart';
import 'package:tamang_food_service/pages/profileScreen/subProfileScreen/sub_profile_info.dart';
import 'package:tamang_food_service/pages/resetMailSent/header_goback.dart';
import 'package:tamang_food_service/pages/restaurants/main_restaurants.dart';
import '/theme/theme.dart';
import 'pages/bottomBarNavigator/bottom_bar_navigator.dart';
import 'pages/slide_page_started/home_pages.dart';
import './pages/loginScreen/welcome_login.dart';
import 'authenaticator/widgetTree.dart';
import 'pages/createAccScreen/create_acc_screen.dart';
import 'pages/forgetScreen/forgot_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kColorPrimaryTheme,
        fontFamily: 'SF Pro Text',
      ),
      debugShowCheckedModeBanner: false,
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      initialRoute: '$GettingStartedScreen',
      routes: {
        '$GettingStartedScreen': (_) => const GettingStartedScreen(),
        '$WelcomeLoginScreen': (_) => const WelcomeLoginScreen(),
        '$ForgotScreen': (_) => const ForgotScreen(),
        '$GoBackVsTitle': (_) => const GoBackVsTitle(),
        '$CreateAccScreen': (_) => const CreateAccScreen(),
        '$LoginNumberPhone': (_) => const LoginNumberPhone(),
        '$VerifyNumberPhone': (_) => const VerifyNumberPhone(),
        '$FindLocationRestaurant': (context) => const FindLocationRestaurant(),
        '$HomeMainScreen': (context) => const HomeMainScreen(),
        '$WidgetTree': (context) => const WidgetTree(),
        '$BottomBarNavigator': (_) => const BottomBarNavigator(),
        '$MainFeaturedPartners': (context) => const MainFeaturedPartners(),
        '$MainRestaurants': (context) => const MainRestaurants(),
        '$SubProfileInfo': (_) => const SubProfileInfo(),
        '$ChangePasswordScreen': (context) => const ChangePasswordScreen(),
        '$FilterMainScreen' : (context) => const FilterMainScreen(),
      },
    );
  }
}
