import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class EmailPass extends StatelessWidget {
  const EmailPass({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'enter email',
                labelText: 'EMAIL ADDRESS',
              ),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'PASSWORD',
              hintText: 'enter password',
            ),
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                PrimaryFont.light(10),
              ),
            ),
            child: const Text('Forget Password?'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                Size(size.width * 0.95, size.height * 0.060),
              ),
              textStyle: MaterialStateProperty.all(
                PrimaryFont.medium(size.height * 0.018),
              ),
            ),
            child: const Text('SIGN IN'),
          )
        ],
      ),
    );
  }
}
