import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../loginScreen/welcome_login.dart';

class TitleHeaderCreateAccScreen extends StatelessWidget {
  const TitleHeaderCreateAccScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Text.rich(
          TextSpan(
            text: 'Create Account \n',
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w300,
              color: Colors.black,
              height: 1.4,
            ),
            children: [
              const TextSpan(
                text: 'Enter your Name, Email and Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              WidgetSpan(
                child: DefaultTextStyle(
                  style: PrimaryFont.light(16).copyWith(
                    color: kColorDefaultTextAndIcon,
                  ),
                  child: Row(
                    children: [
                      const Text('for sign up  '),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('$WelcomeLoginScreen');
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(kColorPrimaryTheme),
                        ),
                        child: const Text('Already have accounts'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
