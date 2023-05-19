import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamang_food_service/theme/theme.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
