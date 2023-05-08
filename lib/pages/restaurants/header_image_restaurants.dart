import 'package:flutter/material.dart';

import '../../theme/list_data.dart';
import '../../theme/theme.dart';
import '../mainPage/IndicatorDotImage/indicatorDot.dart';

class HeaderImageRestaurants extends StatefulWidget {
  const HeaderImageRestaurants({
    super.key,
  });

  @override
  State<HeaderImageRestaurants> createState() => _HeaderImageRestaurantsState();
}

class _HeaderImageRestaurantsState extends State<HeaderImageRestaurants> {
  int _currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemCount: listImageRestaurants.length,
          onPageChanged: (value) {
            setState(() {
              _currentPage = value;
            });
          },
          itemBuilder: (context, index) {
            return Image.asset(
              listImageRestaurants[index],
              fit: BoxFit.cover,
            );
          },
        ),
        Positioned(
          bottom: defaultPadding,
          right: defaultPadding,
          child: Row(
            children: List.generate(
              listImageRestaurants.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding / 2),
                child: IndicatorDotImage(
                  isActive: index == _currentPage,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
