import 'package:flutter/material.dart';

import '../../theme/list_data.dart';
import '../../theme/theme.dart';

class RestaurantsInfo extends StatelessWidget {
  const RestaurantsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              food3[0]['name'].toString(),
              style: PrimaryFont.medium(24).copyWith(
                color: kColorDefaultTextAndIcon,
                height: 1.8,
              ),
            ),
          ),
          DefaultTextStyle(
            style: PrimaryFont.light(16).copyWith(color: kColorTextField),
            child: Row(
              children: [
                const Text('\$\$'),
                const Padding(
                  padding: EdgeInsets.only(
                      left: defaultPadding, right: defaultPadding - 10),
                  child: CircleAvatar(
                    radius: 2.0,
                    backgroundColor: kColorTextField,
                  ),
                ),
                Text(
                  food3[0]['location1'],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: defaultPadding, right: defaultPadding - 10),
                  child: CircleAvatar(
                    radius: 2.0,
                    backgroundColor: kColorTextField,
                  ),
                ),
                Text(
                  food3[0]['location2'],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: defaultPadding, right: defaultPadding - 10),
                  child: CircleAvatar(
                    radius: 2.0,
                    backgroundColor: kColorTextField,
                  ),
                ),
                Text(
                  food3[0]['food'],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: DefaultTextStyle(
              style: PrimaryFont.light(12).copyWith(color: kColorTextField),
              child: Row(
                children: [
                  Text(food3[0]['rating'].toString()),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: defaultPadding - 10, right: defaultPadding - 10),
                    child: Icon(
                      Icons.star,
                      size: defaultPadding,
                      color: kColorPrimaryTheme,
                    ),
                  ),
                  Text('${food3[0]['totalRating'].toString()}+ Ratings'),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.attach_money_rounded,
                color: kColorPrimaryTheme,
                size: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(top: defaultPadding),
                child: RichText(
                  text: TextSpan(
                    text: 'Free\n',
                    style:
                        PrimaryFont.light(16).copyWith(color: kColorTextField),
                    children: [
                      TextSpan(
                        text: 'Delivery',
                        style: PrimaryFont.light(12)
                            .copyWith(color: kColorTextField),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: defaultPadding + defaultPadding),
                child: Icon(
                  Icons.alarm_rounded,
                  color: kColorPrimaryTheme,
                  size: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: defaultPadding,
                  right: defaultPadding + 40,
                ),
                child: RichText(
                  text: TextSpan(
                    text: '25\n',
                    style:
                        PrimaryFont.light(16).copyWith(color: kColorTextField),
                    children: [
                      TextSpan(
                        text: 'Minutes',
                        style: PrimaryFont.light(12)
                            .copyWith(color: kColorTextField),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: defaultPadding),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(kColorTransparent),
                    elevation: MaterialStateProperty.all(0),
                    foregroundColor:
                        MaterialStateProperty.all(kColorPrimaryTheme),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(
                            width: 1.0, color: kColorPrimaryTheme),
                      ),
                    ),
                  ),
                  child: Text(
                    'Take Away'.toUpperCase(),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
