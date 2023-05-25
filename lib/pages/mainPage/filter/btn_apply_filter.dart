import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

class BtnApplyFilter extends StatelessWidget {
  const BtnApplyFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(
            size.width * 0.9,
            size.height * 0.065,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
      ),
      child: Text(
        'apply filter'.toUpperCase(),
      ),
    );
  }
}
