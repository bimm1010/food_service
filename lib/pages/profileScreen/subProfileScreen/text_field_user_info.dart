import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/authenaticator/auth.dart';
import 'package:tamang_food_service/pages/profileScreen/subProfileScreen/change_password_screen.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../../../state/state_manager.dart';

class TextFieldUserInfo extends ConsumerWidget {
  const TextFieldUserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final fullName = ref.watch(dataSaveFullNameStateProvider);
    final mail = ref.watch(dataSaveMailStateProvider);
    final pass = ref.watch(dataSavePassStateProvider);
    final phoneNumber = ref.watch(dataSavePhoneNumberStateProvider);

    List<Map<String, dynamic>> listTextField = [
      {
        "label": "full name",
        "obscureText": false,
        "value": TextEditingController(text: fullName.toString()),
        "enable": true,
        "suffix": const Text(''),
        "saveChanged": (value) {
          ref
              .read(dataSaveFullNameStateProvider.notifier)
              .getFullName(value); // get changed fullName
        },
      },
      {
        "label": "email address",
        "obscureText": false,
        "value": TextEditingController(text: mail.toString()),
        "enable": false,
        "suffix": const Text(''),
        "saveChanged": (value) {},
      },
      {
        "label": "phone number",
        "obscureText": false,
        "value": TextEditingController(text: phoneNumber.toString()),
        "enable": true,
        "suffix": const Text(''),
        "saveChanged": (value) {
          ref
              .read(dataSavePhoneNumberStateProvider.notifier)
              .getUserNumber(value); // get changed fullName
        },
      },
      {
        "label": "password",
        "obscureText": true,
        "value": TextEditingController(text: pass.toString()),
        "enable": true,
        "suffix": TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed('$ChangePasswordScreen');
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
          ),
          child: const Text('Change'),
        ),
        "saveChanged": (value) {},
      },
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            Expanded(
              child: FractionallySizedBox(
                heightFactor: 1.1,
                child: Column(
                  children: List.generate(
                    listTextField.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(top: defaultPadding),
                      child: TextField(
                        onChanged: listTextField[index]['saveChanged'],
                        enabled: listTextField[index]['enable'],
                        controller: listTextField[index]['value'],
                        decoration: InputDecoration(
                          label: Text(
                            '${listTextField[index]['label']}'.toUpperCase(),
                          ),
                          labelStyle: const TextStyle(color: kColorTextField),
                          border: InputBorder.none,
                          suffix: listTextField[index]['suffix'],
                        ),
                        cursorColor: kColorPrimaryTheme,
                        obscureText: listTextField[index]['obscureText'],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FractionallySizedBox(
                heightFactor: 0.9,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kColorPrimaryTheme),
                        elevation: MaterialStateProperty.all(0),
                        fixedSize: MaterialStateProperty.all(
                          Size(
                            size.width * 0.9,
                            size.height * 0.050,
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                    child: Text(
                      'Change settings'.toUpperCase(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
