import 'package:flutter/material.dart';
import '../loginScreen/header_navigation.dart';

class WelcomeLoginScreen extends StatelessWidget {
  const WelcomeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: const [
            HeaderNavigation(),
          ],
        ),
      ),
    );
  }
}
