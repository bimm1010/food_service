import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamang_food_service/pages/loginScreen/email_pass.dart';
import 'package:tamang_food_service/pages/loginScreen/login_fb_gg.dart';
import 'package:tamang_food_service/pages/loginScreen/new_acc.dart';
import 'package:tamang_food_service/theme/theme.dart';
import '../loginScreen/header_content.dart';
import '../slide_page_started/home_pages.dart';

class WelcomeLoginScreen extends StatelessWidget {
  const WelcomeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('$GettingStartedScreen');
          },
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all(kColorDefaultTextAndIcon),
          ),
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
          ),
        ),
        title: Text(
          'Sign In',
          style: PrimaryFont.light(16).copyWith(
            color: kColorDefaultTextAndIcon,
          ),
        ),
        centerTitle: true,
        backgroundColor: kColorTransparent,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: FractionallySizedBox(
                heightFactor: 1.2,
                alignment: Alignment.topLeft,
                child: HeaderContent(),
              ),
            ),
            Expanded(
              flex: 4,
              child: FractionallySizedBox(
                heightFactor: 1.1,
                alignment: Alignment.topLeft,
                child: EmailPass(),
              ),
            ),
            NewAccount(),
            Expanded(
              flex: 3,
              child: FractionallySizedBox(
                alignment: Alignment.topCenter,
                heightFactor: 1.1,
                child: LoginFbGG(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
