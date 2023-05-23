import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/pages/createAccScreen/btn_footer_verify.dart';
import 'package:tamang_food_service/pages/createAccScreen/opt_verify_input.dart';
import 'package:tamang_food_service/state/state_manager.dart';

class VerifyNumberPhone extends StatelessWidget {
  const VerifyNumberPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Login to Foodly',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: Consumer(
        builder: (context, ref, child) {
          final numberPhone = ref.watch(dataSavePhoneNumberStateProvider);
          return Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Verify phone number\n',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      height: 2.0,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'Enter the 4-Digit code sent to you at\n${numberPhone.toString()}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const OptVerifyInput(),
              const BtnFooterVerify(),
            ],
          );
        },
      ),
    );
  }
}
