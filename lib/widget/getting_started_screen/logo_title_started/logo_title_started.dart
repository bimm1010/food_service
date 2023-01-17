import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        SvgPicture.asset(
          'assets/images/logo_start.svg',
          width: 64,
          height: 62,
          fit: BoxFit.scaleDown,
        ),
        RichText(
          text: const TextSpan(
            text: 'Tamang \n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 37,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(text: 'FoodService'),
            ],
          ),
        )
      ],
    );
  }
}
