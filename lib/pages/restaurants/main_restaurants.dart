import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/restaurants/restaurants_info.dart';
import 'package:tamang_food_service/theme/list_data.dart';
import 'package:tamang_food_service/theme/theme.dart';
import 'list_featured_items.dart';
import 'restaurants_app_bar.dart';

class MainRestaurants extends StatelessWidget {
  const MainRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const RestaurantsAppBar(),
          const SliverToBoxAdapter(
            child: RestaurantsInfo(),
          ),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: defaultPadding * 2.0,
                  left: defaultPadding,
                  right: defaultPadding,
                  bottom: defaultPadding,
                ),
                child: Text(
                  'Featured Items',
                  style: PrimaryFont.light(20),
                ),
              ),
            ),
            // list image
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  listFeaturedItems.length,
                  (index) => ListFeaturedItems(
                    image: listFeaturedItems[index]['image'],
                    name: listFeaturedItems[index]['name'],
                    location: listFeaturedItems[index]['location'],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}