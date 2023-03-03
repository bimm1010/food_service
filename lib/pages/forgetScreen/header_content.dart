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
            text: 'Forgot password\n',
            style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.w300,
                height: 1.5),
            children: [
              TextSpan(
                text:
                    'Enter your email address and we will\nsend you a reset instructions.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    color: Colors.black45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
