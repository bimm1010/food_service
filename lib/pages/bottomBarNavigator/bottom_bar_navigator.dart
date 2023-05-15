import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/bottomBarNavigator/profile_btn.dart';
import 'package:tamang_food_service/pages/orderScreen/order_main_screen.dart';
import 'package:tamang_food_service/pages/profileScreen/profile_main_screen.dart';
import 'package:tamang_food_service/pages/searchScreen/search_main_screen.dart';

import '../mainPage/home_screen.dart';
import 'home_btn.dart';
import 'order_btn.dart';
import 'search_btn.dart';

class BottomBarNavigator extends StatefulWidget {
  const BottomBarNavigator({Key? key}) : super(key: key);

  @override
  State<BottomBarNavigator> createState() => _BottomBarNavigatorState();
}

class _BottomBarNavigatorState extends State<BottomBarNavigator> {
  int pageIndex = 0;

  final pages = [
    const HomeMainScreen(),
    const SearchMainScreen(),
    const OrderMainScreen(),
    const ProfileMainScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildNaviBar(context),
    );
  }

  Container buildNaviBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HomeBtn(
            pageIndex: pageIndex,
            press: () {
              setState(() {
                pageIndex = 0;
              });
            },
          ),
          SearchBtn(
            pageIndex: pageIndex,
            press: () {
              setState(() {
                pageIndex = 1;
              });
            },
          ),
          OrderBtn(
            pageIndex: pageIndex,
            press: () {
              setState(() {
                pageIndex = 2;
              });
            },
          ),
          ProfileBtn(
              pageIndex: pageIndex,
              press: () {
                setState(() {
                  pageIndex = 3;
                });
              }),
        ],
      ),
    );
  }
}
