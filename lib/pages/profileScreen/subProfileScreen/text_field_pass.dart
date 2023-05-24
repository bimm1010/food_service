import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamang_food_service/theme/theme.dart';

class TextFieldPass extends StatelessWidget {
  const TextFieldPass({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Map<String, dynamic>> listFormFieldPass = [
      {
        "label": "password",
      },
      {
        "label": "new password",
      },
      {
        "label": "confirm password",
      },
    ];
    return Column(
      children: [
        Column(
          children: List.generate(
            listFormFieldPass.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text(
                    "${listFormFieldPass[index]['label']}".toUpperCase(),
                    style: PrimaryFont.light(12),
                  ),
                  labelStyle: const TextStyle(color: kColorTextField),
                  border: InputBorder.none,
                  suffix: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/invisible.svg'),
                  ),
                ),
                focusNode: FocusNode(),
                cursorColor: kColorPrimaryTheme,
              ),
            ),
          ),
        ),
        Expanded(
          child: FractionallySizedBox(
            heightFactor: 0.9,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(kColorPrimaryTheme),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(
                    Size(size.width * 0.9, size.height * 0.060),
                  ),
                ),
                child: Text(
                  'change password'.toUpperCase(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
