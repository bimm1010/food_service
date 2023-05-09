import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/restaurants/category_menu.dart';
import 'package:tamang_food_service/pages/restaurants/restaurants_info.dart';
import 'package:tamang_food_service/theme/list_data.dart';
import 'package:tamang_food_service/theme/theme.dart';
import 'list_featured_items.dart';
import 'menu_category_item.dart';
import 'restaurants_app_bar.dart';

class MainRestaurants extends StatefulWidget {
  const MainRestaurants({super.key});

  @override
  State<MainRestaurants> createState() => _MainRestaurantsState();
}

class _MainRestaurantsState extends State<MainRestaurants> {
  final scrollController = ScrollController();

  int selectedCategoryIndex = 0;

  double restaurantInfoHeight = 200 +
      490 -
      kToolbarHeight; // AppBar expandedHeight + (restaurantInfo + listFeaturedITems) - kToolbarHeight

  @override
  void initState() {
    // createBreakPoints();
    // scrollController.addListener(() {
    //   updateCategoryIndexOnScroll(scrollController.offset);
    // });
    super.initState();
  }

  void scrollToCategory(int index) {
    if (selectedCategoryIndex != index) {
      int totalItems = 0;

      for (var i = 0; i < index; i++) {
        totalItems += listCategoryMenu[i].items.length;
      }

      scrollController.animateTo(
        restaurantInfoHeight + (116 * totalItems) + (120 * index),
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      setState(() {
        selectedCategoryIndex = index;
      });
    }
  }

  // List<double> breakPoints = [];
  // void createBreakPoints() {
  //   double firstBreakPoint =
  //       restaurantInfoHeight + 120 + (116 * listCategoryMenu[0].items.length);
  //   breakPoints.add(firstBreakPoint);
  //   for (var i = 1; i < listCategoryMenu.length; i++) {
  //     double breakPoint =
  //         breakPoints.last + 120 + (116 * listCategoryMenu[0].items.length);
  //     breakPoints.add(breakPoint);
  //   }
  // }

  // void updateCategoryIndexOnScroll(double offset) {
  //   for (var i = 0; i < listCategoryMenu.length; i++) {
  //     if (i == 0) {
  //       if ((offset < breakPoints.first) & (selectedCategoryIndex != 0)) {
  //         setState(() {
  //           selectedCategoryIndex = 0;
  //         });
  //       } else if ((breakPoints[i - 1] <= offset) & (offset < breakPoints[i])) {
  //         if (selectedCategoryIndex != i) {
  //           setState(() {
  //             selectedCategoryIndex = i;
  //           });
  //         }
  //       }
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
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
                    press: () {},
                  ),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: RestaurantCategory(
              onChange: scrollToCategory,
              selectedIndex: selectedCategoryIndex,
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: listCategoryMenu.length,
              (context, categoryIndex) {
                return MenuCategoryItem(
                  items: List.generate(
                    listCategoryMenu[categoryIndex].items.length,
                    (index) => MenuCard(
                      title: listCategoryMenu[categoryIndex].items[index].title,
                      image: listCategoryMenu[categoryIndex].items[index].image,
                      price: listCategoryMenu[categoryIndex].items[index].price,
                    ),
                  ),
                  title: listCategoryMenu[categoryIndex].category,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
