import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/theme.dart';

class SearchBtn extends StatelessWidget {
  const SearchBtn({
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
          icon: pageIndex == 1
              ? SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: kColorPrimaryTheme,
                  height: 80,
                )
              : SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: kColorTextField,
                  height: 80,
                ),
        ),
        pageIndex == 1
            ? Text(
                'Search',
                style:
                    PrimaryFont.light(12).copyWith(color: kColorPrimaryTheme),
              )
            : Text(
                'Search',
                style: PrimaryFont.light(12).copyWith(color: kColorTextField),
              )
      ],
    );
  }
}
