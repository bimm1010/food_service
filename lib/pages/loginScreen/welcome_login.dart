import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/loginScreen/email_pass.dart';
import '../loginScreen/header_navigation.dart';
import '../loginScreen/header_content.dart';

class WelcomeLoginScreen extends StatelessWidget {
  const WelcomeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: const [
          HeaderNavigation(),
          HeaderContent(),
          EmailPass(),
        ],
      )),
    );
  }
}
