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
    final size = MediaQuery.of(context).size;

    checkHaveMail() {
      // print(getEmailText.toString().isEmpty);
      Navigator.of(context).pushNamed('$GoBackVsTitle');
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 16,
            right: 16,
            bottom: 16,
          ),
          child: TextField(
            decoration: const InputDecoration(
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
            getEmailText.toString().isNotEmpty == true
                ? checkHaveMail()
                : showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Warning...'),
                        content: const Text(
                            'You don"t input your email. Please enter your email'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          )
                        ],
                      );
                    },
                  );
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
