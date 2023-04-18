import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class MediumCard extends StatelessWidget {
  const MediumCard({
    super.key,
    required this.title,
    required this.image,
    required this.deliveryTime,
    required this.rating,
    required this.press,
    required this.location,
  });

  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: press,
          child: SizedBox(
            width: 200,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.25,
                  child: Image.asset(image),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: RichText(
                      text: TextSpan(
                        text: '${title.toString()}\n',
                        style: PrimaryFont.light(20).copyWith(
                          color: kColorDefaultTextAndIcon,
                          height: 1.2,
                        ),
                        children: [
                          TextSpan(
                            text: location.toString(),
                            style: PrimaryFont.light(16).copyWith(
                              color: kColorTextField,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                      color: kColorDefaultTextAndIcon, fontSize: 12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
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
                            style: PrimaryFont.thin(12)
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        const Text('25min'),
                        const Spacer(),
                        const Spacer(),
                        const Spacer(),
                        const CircleAvatar(
                          radius: 2,
                          backgroundColor: kColorDefaultTextAndIcon,
                        ),
                        const Spacer(),
                        const Text('Free delivery')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
