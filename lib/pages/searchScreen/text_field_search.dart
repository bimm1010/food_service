import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.028),
      sliver: SliverToBoxAdapter(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Visibility(
              child: Icon(
                Icons.search,
                size: 20,
              ),
            ),
            prefixIconColor: kColorTextField,
            border: InputBorder.none,
            hintText: 'Search on foodly',
            hintStyle: PrimaryFont.light(14).copyWith(
              color: kColorTextField,
            ),
          ),
          cursorColor: kColorPrimaryTheme,
        ),
      ),
    );
  }
}
