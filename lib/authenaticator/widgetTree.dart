import 'package:flutter/material.dart';

import './auth.dart';
import '../pages/loginScreen/welcome_login.dart';
import '../pages/mainPage/home_screen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return const HomeMainScreen();
        } else {
          return const WelcomeLoginScreen();
        }
      },
    );
  }
}
