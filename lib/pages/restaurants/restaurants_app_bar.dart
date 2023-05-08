import 'package:flutter/material.dart';

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
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      expandedHeight: 200,
      flexibleSpace: const FlexibleSpaceBar(
        background: HeaderImageRestaurants(),
      ),
      actions: const [
        TwoBtnShareSearch(),
      ],
    );
  }
}
