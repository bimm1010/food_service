import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/theme.dart';

class ProfileBtn extends StatelessWidget {
  const ProfileBtn({
    super.key,
    required this.pageIndex,
    required this.press,
  });

  final int pageIndex;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: press,
          icon: pageIndex == 3
              ? SvgPicture.asset(
                  'assets/icons/profile.svg',
                  color: kColorPrimaryTheme,
                  height: 80,
                )
              : SvgPicture.asset(
                  'assets/icons/profile.svg',
                  color: kColorTextField,
                  height: 80,
                ),
        ),
        pageIndex == 3
            ? Text(
                'Profile',
                style:
                    PrimaryFont.light(12).copyWith(color: kColorPrimaryTheme),
              )
            : Text(
                'Profile',
                style: PrimaryFont.light(12).copyWith(color: kColorTextField),
              )
      ],
    );
  }
}
