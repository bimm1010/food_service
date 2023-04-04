import 'package:flutter/material.dart';

class GoBackVsTitle extends StatelessWidget {
  const GoBackVsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
          const Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Text(
              'Forgot Password',
              style: TextStyle(fontWeight: FontWeight.w600),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
