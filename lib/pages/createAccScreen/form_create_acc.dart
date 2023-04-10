import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../../state/state_manager.dart';

class FormCreateAcc extends ConsumerWidget {
  const FormCreateAcc({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final showOffPass = ref.watch(showOffPassStateProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter Your Full Name...',
              labelStyle: TextStyle(color: kColorTextField),
              fillColor: kColorPrimaryTheme,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kColorPrimaryTheme, width: 2.0),
              ),
              label: Text('Full Name'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Email...',
                label: Text('Email Address'),
                labelStyle: TextStyle(color: kColorTextField),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kColorPrimaryTheme, width: 2.0),
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Enter Your Password...',
                label: const Text('Password'),
                labelStyle: const TextStyle(color: kColorTextField),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: kColorPrimaryTheme, width: 2.0),
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
                elevation: MaterialStateProperty.all(0),
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
              ),
              onPressed: () {},
              child: const Text('SIGN UP'),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  text:
                      'By Signing up you agree to our Terms\nConditions & Privacy Policy.'),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
