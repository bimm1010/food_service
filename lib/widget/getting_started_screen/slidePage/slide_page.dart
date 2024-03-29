import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamang_food_service/theme/theme.dart';
import '../../../model/item_slide_list.dart';

class SlideItem extends StatelessWidget {
  final int index;
  const SlideItem(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 30),
          child: SvgPicture.asset(
            listSlide[index].imageURL,
            width: 350,
            height: 280,
            fit: BoxFit.scaleDown,
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.7,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: listSlide[index].title,
              style: const TextStyle(
                color: kColorDefaultTextAndIcon,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                height: 2,
              ),
              children: [
                const TextSpan(
                  text: '\n',
                ),
                TextSpan(
                  text: listSlide[index].description,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.8,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
