import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/locationScreen/find_location.dart';
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
                  Text(
                    'Delivery to'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: kColorPrimaryTheme),
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
                    style: TextStyle(color: Colors.black),
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
                  press: () {},
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        print('hello');
                      },
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 1.25,
                              child: Image.asset('assets/images/medium_1.png'),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: RichText(
                                  text: TextSpan(
                                    text: '${demoMediumCardData[0]['name']}\n',
                                    style: PrimaryFont.light(20).copyWith(
                                      color: kColorDefaultTextAndIcon,
                                      height: 1.2,
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            '${demoMediumCardData[0]["location"]}',
                                        style: PrimaryFont.light(16).copyWith(
                                          color: kColorTextField,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            DefaultTextStyle(
                              style: const TextStyle(
                                  color: kColorDefaultTextAndIcon,
                                  fontSize: 12),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: defaultPadding / 2,
                                        vertical: defaultPadding / 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: kColorPrimaryTheme,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        demoMediumCardData[0]['rating']
                                            .toString(),
                                        style: PrimaryFont.thin(12)
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                    const Spacer(),
                                    const Text('25min'),
                                    const Spacer(),
                                    const Spacer(),
                                    const Spacer(),
                                    const CircleAvatar(
                                      radius: 2,
                                      backgroundColor: kColorDefaultTextAndIcon,
                                    ),
                                    const Spacer(),
                                    const Text('Free delivery')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
