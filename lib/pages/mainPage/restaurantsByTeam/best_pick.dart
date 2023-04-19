import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class BestPick extends StatelessWidget {
  const BestPick({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: PrimaryFont.medium(24),
        ),
        TextButton(
          onPressed: press,
          child: Text(
            'See all',
            style: PrimaryFont.light(16).copyWith(
              color: kColorPrimaryTheme,
            ),
          ),
        ),
      ],
    );
  }
}
