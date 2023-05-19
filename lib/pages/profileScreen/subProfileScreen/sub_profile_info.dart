import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamang_food_service/pages/profileScreen/subProfileScreen/text_field_user_info.dart';
import 'package:tamang_food_service/theme/theme.dart';

class SubProfileInfo extends StatelessWidget {
  const SubProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
        title: Text(
          'Profile Settings',
          style: PrimaryFont.medium(16).copyWith(
            color: kColorDefaultTextAndIcon,
          ),
        ),
        centerTitle: true,
        backgroundColor: kColorTransparent,
        elevation: 0,
      ),
      body: const TextFieldUserInfo(),
    );
  }
}
