import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamang_food_service/theme/list_data.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../IndicatorDotImage/indicatorDot.dart';

class Food1Detail extends StatefulWidget {
  const Food1Detail({
    super.key,
  });

  @override
  State<Food1Detail> createState() => _Food1Detail();
}

class _Food1Detail extends State<Food1Detail> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.81,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  PageView.builder(
                    itemCount: listPicDemoAllRestaurants1.length,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(food1[0]['image'][index]);
                    },
                  ),
                  Positioned(
                    bottom: defaultPadding,
                    right: defaultPadding,
                    child: Row(
                      children: List.generate(
                        listPicDemoAllRestaurants1.length,
                        (index) => Padding(
                          padding:
                              const EdgeInsets.only(right: defaultPadding / 4),
                          child: IndicatorDotImage(
                              isActive: index == _currentPage),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: defaultPadding),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  food1[0]['name'],
                  style: PrimaryFont.light(20),
                ),
              ),
            ),
            DefaultTextStyle(
              style: PrimaryFont.light(16).copyWith(color: kColorTextField),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 320,
                  child: Row(
                    children: [
                      const Text('\$\$'),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: defaultPadding / 2),
                        child: CircleAvatar(
                          backgroundColor: kColorTextField,
                          radius: 2,
                        ),
                      ),
                      Text(food1[0]['location1']),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: defaultPadding / 2),
                        child: CircleAvatar(
                          backgroundColor: kColorTextField,
                          radius: 2,
                        ),
                      ),
                      Text(food1[0]['location2']),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: defaultPadding / 2),
                        child: CircleAvatar(
                          backgroundColor: kColorTextField,
                          radius: 2,
                        ),
                      ),
                      Text(food1[0]['food']),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 320,
                child: DefaultTextStyle(
                  style: PrimaryFont.light(14).copyWith(color: kColorTextField),
                  child: Row(
                    children: [
                      Text(food1[0]['rating'].toString()),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding / 4),
                        child: Icon(
                          Icons.star,
                          color: kColorPrimaryTheme,
                          size: 18,
                        ),
                      ),
                      Text('${food1[0]['totalRating'].toString()}+ Ratings'),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        iconSize: 18,
                        icon: SvgPicture.asset('assets/icons/clock.svg'),
                      ),
                      Text('${food1[0]['delivertTime'].toString()} Min'),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 2,
                        backgroundColor: kColorTextField,
                      ),
                      const Icon(
                        Icons.attach_money,
                        size: 18,
                      ),
                      const Text('Free'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
