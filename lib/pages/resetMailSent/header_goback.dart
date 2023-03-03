import 'package:flutter/material.dart';

class GoBackVsTitle extends StatelessWidget {
  const GoBackVsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        Row(
          children: const [
            Text('Forgot Password'),
            Text(''),
          ],
        ),
      ],
    );
  }
}
