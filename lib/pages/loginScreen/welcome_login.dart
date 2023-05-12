import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/loginScreen/email_pass.dart';
import 'package:tamang_food_service/pages/loginScreen/login_fb_gg.dart';
import 'package:tamang_food_service/pages/loginScreen/new_acc.dart';
import '../loginScreen/header_navigation.dart';
import '../loginScreen/header_content.dart';

class WelcomeLoginScreen extends StatelessWidget {
  const WelcomeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            HeaderNavigation(),
            HeaderContent(),
            EmailPass(),
            NewAccount(),
            LoginFbGG(),
          ],
        ),
      ),
    );
  }
}
