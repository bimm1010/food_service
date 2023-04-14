import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/state/state_manager.dart';
import 'package:tamang_food_service/theme/theme.dart';

class OptVerifyInput extends ConsumerWidget {
  const OptVerifyInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool checkFocus = true;
    int numberVerify1 = 0;
    int numberVerify2 = 0;
    int numberVerify3 = 0;
    int numberVerify4 = 0;
    List<int> lists = [];

    addNumber1(int num) {
      numberVerify1 = num;
    }

    addNumber2(int num) {
      numberVerify2 = num;
    }

    addNumber3(int num) {
      numberVerify3 = num;
    }

    addNumber4(int num) {
      numberVerify4 = num;
    }

    addList() {
      lists = [numberVerify1, numberVerify2, numberVerify3, numberVerify4];
      ref.read(dataSaveVerifyNumber.notifier).addVerify(lists);
    }

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 54,
              height: 64,
              child: TextField(
                decoration: const InputDecoration(
                  focusColor: kColorPrimaryTheme,
                  fillColor: kColorPrimaryTheme,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kColorPrimaryTheme,
                      style: BorderStyle.none,
                      strokeAlign: StrokeAlign.center,
                    ),
                  ),
                ),
                onChanged: (value) => addNumber1(int.parse(value)),
                autofocus: checkFocus,
                cursorColor: kColorPrimaryTheme,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            SizedBox(
              width: 54,
              height: 64,
              child: TextField(
                decoration: const InputDecoration(
                  focusColor: kColorPrimaryTheme,
                  fillColor: kColorPrimaryTheme,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kColorPrimaryTheme,
                      style: BorderStyle.none,
                      strokeAlign: StrokeAlign.center,
                    ),
                  ),
                ),
                onChanged: (value) => addNumber2(int.parse(value)),
                cursorColor: kColorPrimaryTheme,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            SizedBox(
              width: 54,
              height: 64,
              child: TextField(
                decoration: const InputDecoration(
                  focusColor: kColorPrimaryTheme,
                  fillColor: kColorPrimaryTheme,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kColorPrimaryTheme,
                      style: BorderStyle.none,
                      strokeAlign: StrokeAlign.center,
                    ),
                  ),
                ),
                onChanged: (value) => addNumber3(int.parse(value)),
                cursorColor: kColorPrimaryTheme,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            SizedBox(
              width: 54,
              height: 64,
              child: TextField(
                decoration: const InputDecoration(
                  focusColor: kColorPrimaryTheme,
                  fillColor: kColorPrimaryTheme,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kColorPrimaryTheme,
                      style: BorderStyle.none,
                      strokeAlign: StrokeAlign.center,
                    ),
                  ),
                ),
                onChanged: (value) {
                  addNumber4(int.parse(value));
                  addList();
                },
                cursorColor: kColorPrimaryTheme,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
