import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/featuredPartners/main_featured_partners.dart';
import 'package:tamang_food_service/pages/locationScreen/find_location.dart';
import 'package:tamang_food_service/pages/mainPage/allRestaurants/list_all_restaurants.dart';
import 'package:tamang_food_service/pages/mainPage/allRestaurants/see_all_restaurants.dart';
import 'package:tamang_food_service/pages/mainPage/mediumCard/medium_card.dart';
import 'package:tamang_food_service/pages/mainPage/restaurantsByTeam/best_pick.dart';
import 'package:tamang_food_service/pages/mainPage/restaurantsByTeam/card_best_pick.dart';
import 'package:tamang_food_service/pages/restaurants/main_restaurants.dart';
import 'package:tamang_food_service/theme/list_data.dart';
import 'package:tamang_food_service/theme/theme.dart';

import 'imageHeader/image_header.dart';
import 'sectionTitle/section_title.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: const Text(''),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Delivery to'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: kColorPrimaryTheme),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed('$FindLocationRestaurant');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'HayStreet, Perth ',
                            style: TextStyle(
                              color: kColorDefaultTextAndIcon,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            color: kColorDefaultTextAndIcon,
                            size: 14,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Filter',
                    style: TextStyle(color: kColorDefaultTextAndIcon),
                  ),
                ),
              ],
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              sliver: SliverToBoxAdapter(
                child: ImageHeaderSlide(),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: SectionTitle(
                  title: 'Featured Partners',
                  press: () {
                    Navigator.of(context).pushNamed('$MainFeaturedPartners');
                  },
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      demoMediumCardData.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: MediumCard(
                          title: demoMediumCardData[index]['name'],
                          image: demoMediumCardData[index]['image'],
                          deliveryTime: demoMediumCardData[index]
                              ['delivertTime'],
                          rating: demoMediumCardData[index]['rating'],
                          press: () {},
                          location: demoMediumCardData[index]['location'],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: Image.asset('assets/images/Banner.png'),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: BestPick(
                  title: 'Best Picks\nRestaurants by\nteam',
                  press: () {},
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    demoBestPickCardData.length,
                    (index) => CardBestPick(
                      title: demoBestPickCardData[index]['name'],
                      image: demoBestPickCardData[index]['image'],
                      rating: demoBestPickCardData[index]['rating'],
                      deliveryTime: demoBestPickCardData[index]['delivertTime'],
                      location: demoBestPickCardData[index]['location'],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SeeAllRestaurants(
                press: () {
                  Navigator.of(context).pushNamed('$MainRestaurants');
                },
                title: 'All Restaurants',
              ),
            ),
            const SliverToBoxAdapter(
              child: ListAllRestaurants(),
            ),
          ],
        ),
      ),
    );
  }
}
