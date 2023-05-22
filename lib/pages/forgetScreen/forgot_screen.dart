import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/forgetScreen/email_address.dart';
import 'package:tamang_food_service/pages/forgetScreen/header_goback.dart';
import 'package:tamang_food_service/pages/forgetScreen/header_content.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderGoBack(),
            HeaderContent(),
            EmailAddress(),
          ],
        ),
      ),
    );
  }
}
