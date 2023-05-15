import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/theme.dart';

class HomeBtn extends StatelessWidget {
  const HomeBtn({
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
          enableFeedback: false,
          onPressed: press,
          icon: pageIndex == 0
              ? SvgPicture.asset(
                  'assets/icons/food.svg',
                  color: kColorPrimaryTheme,
                  height: 80,
                )
              : SvgPicture.asset(
                  'assets/icons/food.svg',
                  color: kColorTextField,
                  height: 80,
                ),
        ),
        pageIndex == 0
            ? Text(
                'Home',
                style: PrimaryFont.light(12).copyWith(
                  color: kColorPrimaryTheme,
                ),
              )
            : Text(
                'Home',
                style: PrimaryFont.light(12).copyWith(
                  color: kColorTextField,
                ),
              ),
      ],
    );
  }
}
