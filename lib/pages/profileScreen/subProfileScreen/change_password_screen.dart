import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamang_food_service/theme/theme.dart';

import 'text_field_pass.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

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
          style: PrimaryFont.light(16).copyWith(
            color: kColorDefaultTextAndIcon,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kColorTransparent,
      ),
      resizeToAvoidBottomInset: false,
      body: const TextFieldPass(),
    );
  }
}
