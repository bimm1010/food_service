import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../../authenaticator/auth.dart';

class LogOutOption extends StatelessWidget {
  const LogOutOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> signOut() async {
      await Auth().signOut();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding + 7, vertical: 10),
      child: InkWell(
        onTap: () {
          signOut();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/logout.svg',
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: defaultPadding * 13.3),
              child: Text(
                'Logout',
                style: PrimaryFont.light(16),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/forward.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
