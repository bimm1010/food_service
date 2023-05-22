import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class LoginFbGG extends StatelessWidget {
  const LoginFbGG({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * 0.016,
        left: defaultPadding,
        right: defaultPadding,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.016),
            child: const Text('Or'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kColorFacebookBtn),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                fixedSize: MaterialStateProperty.all(
                  Size(size.width * 0.95, size.height * 0.060),
                ),
                textStyle: MaterialStateProperty.all(
                  PrimaryFont.medium(size.height * 0.018),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Connect with Facebook'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kColorGoogleBtn),
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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Connect with Google'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
