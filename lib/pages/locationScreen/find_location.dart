import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

class FindLocationRestaurant extends StatelessWidget {
  const FindLocationRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.search_off_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Find restaurants near you\n ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 1.8,
                ),
                children: [
                  TextSpan(
                    text:
                        'Please enter your location or allow access to\nyour location to find restaurants near you.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kColorBtnLocation),
                elevation: MaterialStateProperty.all(0),
                foregroundColor: MaterialStateProperty.all(kColorPrimaryTheme),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: kColorPrimaryTheme),
                  ),
                ),
                fixedSize: MaterialStateProperty.all(
                  Size(
                    size.width * 0.9,
                    size.height * 0.060,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on_sharp),
                  Text('Use current location'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: SizedBox(
              width: size.width * 0.9,
              height: size.height * 0.060,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter a new address',
                  hintStyle: const TextStyle(height: 2.8, fontSize: 16),
                  prefixIcon: const Icon(
                    Icons.location_on,
                    size: 20,
                  ),
                  prefixIconColor: kColorTextField,
                  focusColor: kColorPrimaryTheme,
                  fillColor: kColorPrimaryTheme,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: kColorTextField),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                cursorColor: kColorTextField,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
