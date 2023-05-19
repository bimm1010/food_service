import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/state/state_manager.dart';
import 'package:tamang_food_service/theme/theme.dart';


import '../bottomBarNavigator/bottom_bar_navigator.dart';


class BtnFooterVerify extends StatelessWidget {
  const BtnFooterVerify({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer(
      builder: (context, ref, child) {
        final lists = ref.watch(dataSaveVerifyNumber);
        return Column(
          children: [
            ElevatedButton(
              onPressed: () {
                lists.toString().length == 12
                    ? Navigator.of(context).pushNamed('$BottomBarNavigator')
                    : showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Warning'),
                            content: const Text('please check your opt number'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancel'),
                              ),
                            ],
                          );
                        },
                      );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                fixedSize: MaterialStateProperty.all(
                  Size(
                    size.width * 0.9,
                    size.height * 0.050,
                  ),
                ),
                textStyle: MaterialStateProperty.all(
                  PrimaryFont.light(size.height * 0.016),
                ),
              ),
              child: const Text('CONTINUE'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Didn’t receive code?     '),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend Again.',
                      style: TextStyle(
                        color: kColorPrimaryTheme,
                      ),
                    ),
                  )
                ],
              ),
            ),
            RichText(
              text: const TextSpan(
                text:
                    'By Signing up you agree to our Terms\nConditions & Privacy Policy.',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              textAlign: TextAlign.center,
            )
          ],
        );
      },
    );
  }
}
