import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

class SeeAllRestaurants extends StatelessWidget {
  const SeeAllRestaurants({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: PrimaryFont.medium(24),
          ),
          TextButton(
            onPressed: press,
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                PrimaryFont.light(16),
              ),
              foregroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
            ),
            child: const Text('See all'),
          )
        ],
      ),
    );
  }
}
