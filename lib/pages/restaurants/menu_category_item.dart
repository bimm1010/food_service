import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

class MenuCategoryItem extends StatelessWidget {
  const MenuCategoryItem({
    super.key,
    required this.title,
    required this.items,
  });

  final String title;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding, horizontal: defaultPadding),
          child: Text(
            title,
            style: PrimaryFont.medium(18)
                .copyWith(color: kColorDefaultTextAndIcon),
          ),
        ),
        ...items,
      ],
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });

  final String title;
  final String image;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(image),
          ),
          const SizedBox(
            width: defaultPadding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: PrimaryFont.light(18)
                      .copyWith(color: kColorDefaultTextAndIcon),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                      "Shortbread, chocolate turtle cookies, and red velvet."),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('\$\$'),
                    const Padding(
                      padding: EdgeInsets.only(left: defaultPadding),
                      child: CircleAvatar(
                        radius: 2.0,
                        backgroundColor: kColorTextField,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: defaultPadding * 5),
                      child: Text('Chinese'),
                    ),
                    Text(
                      'AUD\$${price.toString()}',
                      style: PrimaryFont.medium(14)
                          .copyWith(color: kColorPrimaryTheme),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
