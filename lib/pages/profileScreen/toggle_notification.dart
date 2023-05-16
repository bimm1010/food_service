import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tamang_food_service/theme/theme.dart';

class ToggleNotification extends StatelessWidget {
  const ToggleNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listNotifications = [
      {
        'title': 'Push Notifications',
        'subtitle': 'For daily update you will get it',
        'icon': 'assets/icons/notify.svg',
        'toggle': true
      },
      {
        'title': 'SMS Notifications',
        'subtitle': 'For daily update you will get it',
        'icon': 'assets/icons/notify.svg',
        'toggle': false,
      },
      {
        'title': 'Promotional Notifications',
        'subtitle': 'For daily update you will get it',
        'icon': 'assets/icons/notify.svg',
        'toggle': true
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'notifications'.toUpperCase(),
              style: PrimaryFont.medium(16),
            ),
          ),
          Column(
              children: List.generate(
            listNotifications.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      listNotifications[index]['icon'],
                      color: Colors.black54,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: defaultPadding * 4.5,
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: '${listNotifications[index]['title']}\n',
                        style: PrimaryFont.light(16).copyWith(
                          color: kColorDefaultTextAndIcon,
                          height: 1.6,
                        ),
                        children: [
                          TextSpan(
                            text: listNotifications[index]['subtitle'],
                            style: PrimaryFont.light(14).copyWith(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GFToggle(
                    onChanged: (value) {},
                    value: listNotifications[index]['toggle'],
                    type: GFToggleType.ios,
                    enabledText: '',
                    disabledText: '',
                    enabledTrackColor: kColorPrimaryTheme,
                    duration: const Duration(milliseconds: 200),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
