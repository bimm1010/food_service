import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class HeaderGoBack extends StatelessWidget {
  const HeaderGoBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('             '),
            ],
          ),
        )
      ],
    );
  }
}
