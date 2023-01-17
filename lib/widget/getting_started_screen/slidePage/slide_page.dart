import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../model/item_slide_list.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(listSlide[index].imageURL),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: listSlide[index].title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
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
                  height: 1.5,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
