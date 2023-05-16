import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/profileScreen/list_info_user.dart';
import 'package:tamang_food_service/pages/profileScreen/logout_option.dart';
import 'package:tamang_food_service/pages/profileScreen/toggle_notification.dart';

import 'more_option.dart';
import 'title_header_profile.dart';

class ProfileMainScreen extends StatelessWidget {
  const ProfileMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitleHeaderProfile(),
              ListInfoUser(),
              ToggleNotification(),
              MoreOption(),
              LogOutOption(),
            ],
          ),
        ),
      ),
    );
  }
}
