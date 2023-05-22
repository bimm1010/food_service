import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/createAccScreen/form_create_acc.dart';
import 'package:tamang_food_service/pages/createAccScreen/title_header.dart';

import 'btn_login_fb_gg.dart';

class CreateAccScreen extends StatelessWidget {
  const CreateAccScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Create Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: const Column(
        children: [
          Expanded(
            flex: 1,
            child: FractionallySizedBox(
              alignment: Alignment.topLeft,
              heightFactor: 1.1,
              child: TitleHeaderCreateAccScreen(),
            ),
          ),
          Expanded(
            flex: 3,
            child: FractionallySizedBox(
              alignment: Alignment.topLeft,
              heightFactor: 1.5,
              child: FormCreateAcc(),
            ),
          ),
          Expanded(
            flex: 2,
            child: FractionallySizedBox(
              heightFactor: 0.8,
              alignment: Alignment.bottomCenter,
              child: BtnFbGg(),
            ),
          ),
        ],
      ),
    );
  }
}
