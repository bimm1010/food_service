import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

import '../../theme/list_data.dart';

class RestaurantCategory extends SliverPersistentHeaderDelegate {
  final ValueChanged<int> onChange;
  final int selectedIndex;

  RestaurantCategory({required this.onChange, required this.selectedIndex});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 70,
      color: Colors.white,
      child: CategoryMenu(
        onChange: onChange,
        getIndex: selectedIndex,
      ),
    );
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class CategoryMenu extends StatefulWidget {
  const CategoryMenu({
    super.key,
    required this.onChange,
    required this.getIndex,
  });

  final ValueChanged<int> onChange;
  final int getIndex;
  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CategoryMenu oldWidget) {
    _controller.animateTo(
      80.0 * widget.getIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: defaultPadding - 9),
        child: Row(
          children: List.generate(
            listCategoryMenu.length,
            (index) => TextButton(
              onPressed: () {
                widget.onChange(index);
              },
              style: TextButton.styleFrom(
                foregroundColor:
                    widget.getIndex == index ? Colors.black : Colors.black45,
              ),
              child: Text(
                listCategoryMenu[index].category.toString(),
                style: PrimaryFont.light(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
