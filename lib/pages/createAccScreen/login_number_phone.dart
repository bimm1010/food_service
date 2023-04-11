import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/pages/createAccScreen/verify_phone_number.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../../state/state_manager.dart';

class LoginNumberPhone extends StatelessWidget {
  const LoginNumberPhone({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black,
        ),
        title: const Text(
          'Login to Tamang Food\nServices',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Get started with Foodly\n',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      height: 2),
                  children: [
                    TextSpan(
                      text:
                          'Enter your phone number to use foodly and\nenjoy your food :)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.8,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                final number = ref.watch(dataSavePhoneNumberStateProvider);
                final numberLength = number.toString().length;
                checkNum() {
                  if (numberLength == 10) {
                    return true;
                  } else if (numberLength < 10 || numberLength > 10) {
                    return false;
                  }
                }

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          label: const Text('PHONE NUMBER'),
                          labelStyle: TextStyle(
                            color: checkNum() == true
                                ? kColorPrimaryTheme
                                : Colors.red,
                          ),
                          fillColor: kColorPrimaryTheme,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: checkNum() == true
                                  ? kColorPrimaryTheme
                                  : Colors.red,
                              width: 2.0,
                            ),
                          ),
                          suffixIcon: checkNum() == true
                              ? const Icon(
                                  Icons.done_all_rounded,
                                  color: kColorPrimaryTheme,
                                )
                              : const Icon(
                                  Icons.assignment_late_outlined,
                                  color: Colors.red,
                                ),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (value) => ref
                            .read(dataSavePhoneNumberStateProvider.notifier)
                            .getUserNumber(value),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        checkNum() == true
                            ? Navigator.of(context)
                                .pushNamed('$VerifyNumberPhone')
                            : showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Warning'),
                                    content: const Text(
                                      'check your number...',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
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
                        backgroundColor:
                            MaterialStateProperty.all(kColorPrimaryTheme),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        fixedSize: MaterialStateProperty.all(
                          Size(
                            size.width * 0.9,
                            size.height * 0.065,
                          ),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all(kColorTextBtn),
                      ),
                      child: const Text('SIGN UP'),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
