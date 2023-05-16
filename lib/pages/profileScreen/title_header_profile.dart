import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class TitleHeaderProfile extends StatelessWidget {
  const TitleHeaderProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: defaultPadding,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            text: '  Account Settings\n',
            style: PrimaryFont.medium(28).copyWith(
              color: kColorDefaultTextAndIcon,
              height: 1.6,
            ),
            children: [
              TextSpan(
                text:
                    'Update your settings like notifications,\n payments, profile edit etc.',
                style: PrimaryFont.light(16).copyWith(
                  color: kColorTextField,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
