import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/searchScreen/header_search.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../../theme/list_data.dart';
import 'text_field_search.dart';

class SearchMainScreen extends StatelessWidget {
  const SearchMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HeaderSearchAppBar(),
          TextFieldSearch(size: size),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Top Restaurants',
                style: PrimaryFont.medium(16),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              children: List.generate(
                listFoodInSearch.length,
                (index) => InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.2,
                        child: Image.asset(
                          listFoodInSearch[index]['image'],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          listFoodInSearch[index]['name'],
                          style: PrimaryFont.light(18),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: defaultPadding),
                        child: Row(
                          children: [
                            Text('\$\$'),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: defaultPadding,
                                  right: defaultPadding - 9),
                              child: CircleAvatar(
                                backgroundColor: kColorTextField,
                                radius: 2,
                              ),
                            ),
                            Text('Chinese')
                          ],
                        ),
                      )
                    ],
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
