import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../state/state_manager.dart';
import '../../theme/theme.dart';

class GoBackVsTitle extends StatelessWidget {
  const GoBackVsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Forgot password',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final getMail = ref.watch(emailSaveStateProvider);
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: RichText(
                    text: TextSpan(
                      text: 'Reset email sent \n',
                      style: const TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          height: 1.5),
                      children: [
                        TextSpan(
                          text:
                              'We have sent a instructions email to \nsajin ${getMail.toString()}',
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              height: 1.8),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(kColorPrimaryTheme),
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
                  child: const Text('SEND AGAIN'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Image.asset('assets/images/Doodles.png'),
              ),
            ],
          );
        },
      ),
    );
  }
}
