import 'package:flutter/material.dart';
import 'package:tamang_food_service/model/item_slide_list.dart';
import 'package:tamang_food_service/widget/getting_started_screen/slidePage/slide_page.dart';
import '../widget/getting_started_screen/logo_title_started/logo_title_started.dart';
import '../widget/getting_started_screen/button_started/button_started.dart';

class GettingStartedScreen extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);

  GettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const LogoTitle(),
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    itemCount: listSlide.length,
                    itemBuilder: (context, index) => SlideItem(index),
                  )
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
