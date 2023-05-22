import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class BtnFbGg extends StatelessWidget {
  const BtnFbGg({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: defaultPadding,
        left: defaultPadding,
        right: defaultPadding,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: defaultPadding),
              child: Text(
                'Or',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
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
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
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
      ),
    );
  }
}
