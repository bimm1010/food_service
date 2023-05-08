import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TwoBtnShareSearch extends StatelessWidget {
  const TwoBtnShareSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/share.svg',
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
