import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/theme.dart';
import 'subProfileScreen/sub_profile_info.dart';

class ListInfoUser extends StatelessWidget {
  const ListInfoUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listOption = [
      {
        "icon": "assets/icons/profile.svg",
        "title": "Profile Information",
        "subtitle": "Change your account information",
        "navigator" : '$SubProfileInfo'
      },
      {
        "icon": "assets/icons/lock.svg",
        "title": "Change Password",
        "subtitle": "Change your password",
      },
      {
        "icon": "assets/icons/card.svg",
        "title": "Payment Methods",
        "subtitle": "Add your credit & debit cards",
      },
      {
        "icon": "assets/icons/marker.svg",
        "title": "Locations",
        "subtitle": "Add or remove your delivery locations",
      },
      {
        "icon": "assets/icons/fb.svg",
        "title": "Add Social Account",
        "subtitle": "Add Facebook, Twitter etc ",
      },
      {
        "icon": "assets/icons/share.svg",
        "title": "Refer to Friends",
        "subtitle": "Get \$10 for reffering friends",
      },
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        children: List.generate(
          listOption.length,
          (index) => InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(listOption[index]['navigator']);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          listOption[index]['icon'],
                          color: Colors.black54,
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: '${listOption[index]['title']}\n',
                          style: PrimaryFont.light(16).copyWith(
                            color: kColorDefaultTextAndIcon,
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(
                              text: listOption[index]['subtitle'],
                              style: PrimaryFont.light(14).copyWith(
                                color: kColorTextField,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
    );
  }
}
