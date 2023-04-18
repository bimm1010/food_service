import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
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
          'Featured\nPartners',
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
