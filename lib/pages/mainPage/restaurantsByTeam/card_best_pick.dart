import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class CardBestPick extends StatelessWidget {
  const CardBestPick({
    super.key,
    required this.title,
    required this.image,
    required this.rating,
    required this.deliveryTime,
    required this.location,
  });

  final String title;
  final String image;
  final double rating;
  final int deliveryTime;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: 200,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.25,
                child: Image.asset(
                  image,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: RichText(
                    text: TextSpan(
                      text: "${title.toString()}\n",
                      style: PrimaryFont.light(20).copyWith(
                        color: kColorDefaultTextAndIcon,
                        height: 1.2,
                      ),
                      children: [
                        TextSpan(
                          text: location,
                          style: PrimaryFont.light(16).copyWith(
                            color: kColorTextField,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: defaultPadding - 1,
                  bottom: defaultPadding,
                ),
                child: DefaultTextStyle(
                  style: const TextStyle(
                    color: kColorDefaultTextAndIcon,
                    fontSize: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 8,
                        ),
                        decoration: BoxDecoration(
                          color: kColorPrimaryTheme,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          rating.toString(),
                          style: PrimaryFont.thin(12).copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text('${deliveryTime}min'),
                      const Padding(
                        padding: EdgeInsets.only(left: defaultPadding),
                        child: CircleAvatar(
                          radius: 2,
                          backgroundColor: kColorDefaultTextAndIcon,
                        ),
                      ),
                      const Text('Free delivery')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
