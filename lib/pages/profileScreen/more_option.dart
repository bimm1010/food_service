import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamang_food_service/theme/theme.dart';

class MoreOption extends StatelessWidget {
  const MoreOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listMore = [
      {
        'title': 'Rate Us',
        'subtitle': 'Rate us playstore, appstore',
        'icon': 'assets/icons/rating.svg',
        'color': kColorPrimaryTheme
      },
      {
        'title': 'FAQ',
        'subtitle': 'Frequently asked questions',
        'icon': 'assets/icons/document.svg',
        'color': Colors.black54
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding + defaultPadding),
          child: Text(
            'more'.toUpperCase(),
            style: PrimaryFont.medium(16),
          ),
        ),
        Column(
          children: List.generate(
            listMore.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding + 6,
                vertical: defaultPadding,
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        listMore[index]['icon'],
                        color: listMore[index]['color'],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: defaultPadding * 5.5),
                      child: RichText(
                        text: TextSpan(
                          text: '${listMore[index]['title']}\n',
                          style: PrimaryFont.light(16).copyWith(
                            color: kColorDefaultTextAndIcon,
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(
                              text: listMore[index]['subtitle'],
                              style: PrimaryFont.light(14).copyWith(
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/forward.svg'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
