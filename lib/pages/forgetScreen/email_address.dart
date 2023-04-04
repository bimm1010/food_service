import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/pages/resetMailSent/header_goback.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../../state/state_manager.dart';

class EmailAddress extends ConsumerWidget {
  const EmailAddress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getEmailText = ref.watch(emailSaveStateProvider);
    print(getEmailText);
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 16,
            right: 16,
            bottom: 16,
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'EMAIL ADDRESS',
              hintText: 'Enter Email Address...',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
            onSubmitted: (value) {
              ref.read(emailSaveStateProvider.notifier).emailReset(value);
            },
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
