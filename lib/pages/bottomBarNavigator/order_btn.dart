import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/theme.dart';

class OrderBtn extends StatelessWidget {
  const OrderBtn({
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
          icon: pageIndex == 2
              ? SvgPicture.asset(
                  'assets/icons/order.svg',
                  color: kColorPrimaryTheme,
                  height: 80,
                )
              : SvgPicture.asset(
                  'assets/icons/order.svg',
                  color: kColorTextField,
                  height: 80,
                ),
        ),
        pageIndex == 2
            ? Text(
                'Order',
                style:
                    PrimaryFont.light(12).copyWith(color: kColorPrimaryTheme),
              )
            : Text(
                'Order',
                style: PrimaryFont.light(12).copyWith(color: kColorTextField),
              ),
      ],
    );
  }
}
