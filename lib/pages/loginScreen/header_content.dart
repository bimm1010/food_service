import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Align(
        alignment: Alignment.topLeft,
        child: RichText(
          text: const TextSpan(
            text: 'Welcome to Tamang \nFood Services\n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 33,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text:
                    'Enter your Phone number or Email \naddress for sign in. Enjoy your food :)',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
