import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../theme/theme.dart';

class LoginFbGG extends StatelessWidget {
  const LoginFbGG({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text('Or'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kColorFacebookBtn),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
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
