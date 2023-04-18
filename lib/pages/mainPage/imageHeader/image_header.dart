import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tamang_food_service/state/state_manager.dart';

import '../../../theme/list_data.dart';
import '../../../theme/theme.dart';

class ImageHeaderSlide extends StatefulWidget {
  const ImageHeaderSlide({
    super.key,
  });

  @override
  State<ImageHeaderSlide> createState() => _ImageHeaderSlideState();
}

class _ImageHeaderSlideState extends State<ImageHeaderSlide> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            itemCount: demoHeaderImages.length,
            onPageChanged: (value) => setState(() {
              _currentPage = value;
            }),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.asset(
                  demoHeaderImages[index],
                ),
              );
            },
          ),
          Positioned(
            bottom: defaultPadding,
            right: defaultPadding,
            child: Row(
              children: List.generate(
                demoHeaderImages.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: defaultPadding / 4),
                  child: IndicatorDotImage(isActive: index == _currentPage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IndicatorDotImage extends StatelessWidget {
  const IndicatorDotImage({
    super.key,
    required this.isActive,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 4,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
