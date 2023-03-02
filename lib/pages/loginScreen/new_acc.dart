import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Don’t have account?',
            style: TextStyle(fontSize: 12),
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                PrimaryFont.thin(12),
              ),
              foregroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
            ),
            child: const Text('Create new account.'),
          )
        ],
      ),
    );
  }
}
