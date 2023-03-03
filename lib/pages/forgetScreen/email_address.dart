import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/resetMailSent/header_goback.dart';
import 'package:tamang_food_service/theme/theme.dart';

class EmailAddress extends StatelessWidget {
  const EmailAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 16,
            right: 16,
            bottom: 16,
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'EMAIL ADDRESS',
              hintText: 'Enter Email Address...',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('$GoBackVsTitle');
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            fixedSize: MaterialStateProperty.all(
              Size(
                size.width * 0.95,
                size.height * 0.060,
              ),
            ),
            textStyle: MaterialStateProperty.all(
              PrimaryFont.medium(size.height * 0.018),
            ),
          ),
          child: const Text('Reset password'),
        ),
      ],
    );
  }
}
