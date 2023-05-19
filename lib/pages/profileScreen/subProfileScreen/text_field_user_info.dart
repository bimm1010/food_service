import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      },
      {
        "label": "email address",
        "obscureText": false,
        "value": TextEditingController(text: mail.toString()),
      },
      {
        "label": "phone number",
        "obscureText": false,
        "value": TextEditingController(text: phoneNumber.toString()),
      },
      {
        "label": "password",
        "obscureText": true,
        "value": TextEditingController(text: pass.toString()),
      },
    ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Column(
                    children: List.generate(
                      listTextField.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(top: defaultPadding),
                        child: TextField(
                          readOnly: true,
                          controller: listTextField[index]['value'],
                          decoration: InputDecoration(
                            label: Text(
                              '${listTextField[index]['label']}'.toUpperCase(),
                            ),
                            labelStyle: const TextStyle(color: kColorTextField),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: kColorPrimaryTheme,
                                width: 0,
                              ),
                            ),
                          ),
                          cursorColor: kColorPrimaryTheme,
                          obscureText: listTextField[index]['obscureText'],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: defaultPadding,
                    bottom: defaultPadding * 5.2,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                          kColorPrimaryTheme,
                        ),
                      ),
                      child: const Text('Change'),
                    ),
                  ),
                ],
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
