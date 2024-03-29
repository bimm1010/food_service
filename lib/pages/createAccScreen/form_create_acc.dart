import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/authenaticator/auth.dart';
import 'package:tamang_food_service/pages/createAccScreen/login_number_phone.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../../state/state_manager.dart';

class FormCreateAcc extends ConsumerWidget {
  const FormCreateAcc({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final showOffPass = ref.watch(showOffPassStateProvider);
    final fullName = ref.watch(dataSaveFullNameStateProvider);
    final mail = ref.watch(dataSaveMailStateProvider);
    final pass = ref.watch(dataSavePassStateProvider);

    checkUser() {
      if (fullName.toString().isNotEmpty &&
          mail.toString().isNotEmpty &&
          pass.toString().isNotEmpty &&
          pass.toString().length >= 6) {
        return true;
      } else {
        return false;
      }
    }

    Future<void> createUserWithEmailAndPassword() async {
      Navigator.of(context).pushNamed('$LoginNumberPhone');
      try {
        await Auth().createUserWithEmailAndPassword(
          email: mail.toString(),
          password: pass.toString(),
        );
      } on FirebaseAuthException catch (e) {
        e.message;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Expanded(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter Your Full Name...',
                labelStyle: TextStyle(color: kColorTextField),
                fillColor: kColorPrimaryTheme,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kColorPrimaryTheme, width: 2.0),
                ),
                label: Text('Full Name'),
              ),
              onChanged: (value) => ref
                  .read(dataSaveFullNameStateProvider.notifier)
                  .getFullName(value),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter Your Email...',
                  label: Text('Email Address'),
                  labelStyle: TextStyle(color: kColorTextField),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kColorPrimaryTheme, width: 2.0),
                  ),
                ),
                onChanged: (value) => ref
                    .read(dataSaveMailStateProvider.notifier)
                    .getFullMail(value),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Your Password...',
                  label: const Text('Password'),
                  labelStyle: const TextStyle(color: kColorTextField),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kColorPrimaryTheme, width: 2.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      ref.read(showOffPassStateProvider.notifier).changePass();
                    },
                    icon: showOffPass.value == true
                        ? const Icon(Icons.panorama_fish_eye_rounded)
                        : const Icon(Icons.remove_red_eye_sharp),
                  ),
                  suffixIconColor: kColorTextField,
                  focusColor: kColorPrimaryTheme),
              cursorColor: kColorPrimaryTheme,
              obscureText: showOffPass.value,
              enableSuggestions: false,
              autocorrect: false,
              onChanged: (value) => ref
                  .read(dataSavePassStateProvider.notifier)
                  .getFullPass(value),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.056),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(kColorPrimaryTheme),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(
                    Size(
                      size.width * 0.9,
                      size.height * 0.060,
                    ),
                  ),
                ),
                onPressed: () {
                  checkUser() == true
                      ? [
                          createUserWithEmailAndPassword(),
                          Navigator.of(context).pushNamed('$LoginNumberPhone'),
                        ]
                      : showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Warning...'),
                              content: const Text('check your info again...'),
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
                child: const Text('SIGN UP'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: size.height * 0.016),
                child: RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.6,
                      ),
                      text:
                          'By Signing up you agree to our Terms\nConditions & Privacy Policy.'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
