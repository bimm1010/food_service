import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

class TitleHeaderCreateAccScreen extends StatelessWidget {
  const TitleHeaderCreateAccScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Text.rich(
          TextSpan(
            text: 'Create Account \n',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w300,
              color: Colors.black,
              height: 1.6,
            ),
            children: [
              TextSpan(
                text: 'Enter your Name, Email and Password\nfor sign up.  ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'Already have account?',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: kColorPrimaryTheme,
                    height: 1.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
