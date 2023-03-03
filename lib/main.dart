import 'package:flutter/material.dart';
import '/theme/theme.dart';
import './pages/home_pages.dart';
import './pages/loginScreen/welcome_login.dart';
import 'pages/forgetScreen/forgot_screen.dart';

void main() {
  runApp(const MyApp());
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
        '$GettingStartedScreen': (_) => GettingStartedScreen(),
        '$WelcomeLoginScreen': (_) => WelcomeLoginScreen(),
        '$ForgotScreen': (_) => ForgotScreen(),
      },
    );
  }
}
