import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

class ButtonStarted extends StatelessWidget {
  const ButtonStarted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
            fixedSize: MaterialStateProperty.all(
              Size(size.width * 0.9, size.height * 0.065),
            ),
            textStyle: MaterialStateProperty.all(
              TextStyle(
                fontSize: size.height * 0.018,
              ),
            )),
        child: const Text('GET STARTED'),
      ),
    );
  }
}
