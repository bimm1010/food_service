import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../createAccScreen/create_acc_screen.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.026),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Don’t have account?',
            style: TextStyle(fontSize: 10),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('$CreateAccScreen');
            },
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                PrimaryFont.thin(10),
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
