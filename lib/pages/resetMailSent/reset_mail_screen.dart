import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/resetMailSent/header_goback.dart';

class ResetMainScreen extends StatelessWidget {
  const ResetMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            GoBackVsTitle(),
          ],
        ),
      ),
    );
  }
}
