import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/pages/resetMailSent/header_goback.dart';
import '/theme/theme.dart';
import './pages/home_pages.dart';
import './pages/loginScreen/welcome_login.dart';
import 'pages/createAccScreen/create_acc_screen.dart';
import 'pages/forgetScreen/forgot_screen.dart';

void main() {
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
      ),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      initialRoute: '$GettingStartedScreen',
      routes: {
        '$GettingStartedScreen': (_) => const GettingStartedScreen(),
        '$WelcomeLoginScreen': (_) => const WelcomeLoginScreen(),
        '$ForgotScreen': (_) => const ForgotScreen(),
        '$GoBackVsTitle': (_) => const GoBackVsTitle(),
        '$CreateAccScreen': (_) => const CreateAccScreen(),
      },
    );
  }
}
