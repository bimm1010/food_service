import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/forgetScreen/header_goback.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            HeaderGoBack(),
          ],
        ),
      ),
    );
  }
}
