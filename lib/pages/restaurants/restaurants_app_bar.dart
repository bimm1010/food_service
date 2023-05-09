import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamang_food_service/theme/theme.dart';

import 'header_image_restaurants.dart';
import 'two_btn_share_search.dart';

class RestaurantsAppBar extends StatelessWidget {
  const RestaurantsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: kColorDefaultTextAndIcon,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      expandedHeight: 200,
      pinned: true,
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: const FlexibleSpaceBar(
        background: HeaderImageRestaurants(),
      ),
      actions: const [
        TwoBtnShareSearch(),
      ],
    );
  }
}
