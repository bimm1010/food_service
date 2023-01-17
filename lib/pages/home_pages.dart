import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tamang_food_service/model/item_slide_list.dart';
import 'package:tamang_food_service/widget/getting_started_screen/slidePage/slide_page.dart';
import '../widget/getting_started_screen/logo_title_started/logo_title_started.dart';
import '../widget/getting_started_screen/button_started/button_started.dart';
import '../widget/getting_started_screen/slidePage/slide_dot.dart';

class GettingStartedScreen extends StatefulWidget {
  const GettingStartedScreen({super.key});

  @override
  State<GettingStartedScreen> createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const LogoTitle(),
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: _onPageChange,
                    itemCount: listSlide.length,
                    itemBuilder: (context, index) => SlideItem(index),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 35),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < listSlide.length; i++)
                              if (i == _currentPage)
                                SlideDot(true)
                              else
                                SlideDot(false)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const ButtonStarted(),
          ],
        ),
      ),
    );
  }
}
