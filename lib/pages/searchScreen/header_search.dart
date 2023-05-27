import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

class HeaderSearchAppBar extends StatelessWidget {
  const HeaderSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      title: Text(
        'Search',
        style: PrimaryFont.medium(28).copyWith(color: kColorDefaultTextAndIcon),
      ),
      backgroundColor: kColorTransparent,
      elevation: 0,
      pinned: true,
    );
  }
}
