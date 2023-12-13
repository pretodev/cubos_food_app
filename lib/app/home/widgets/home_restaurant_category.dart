import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../business/data/restaurant_category.dart';

class HomeRestaurantCategory extends StatelessWidget {
  const HomeRestaurantCategory({
    super.key,
    required this.category,
    this.actived = false,
    this.onClicked,
  });

  final RestaurantCategory category;
  final bool actived;
  final VoidCallback? onClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Ink(
          child: InkWell(
            onTap: onClicked,
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              height: 72.0,
              width: 72.0,
              decoration: BoxDecoration(
                color:
                    actived ? const Color(0xFF850F66) : const Color(0xFFF1F2F6),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/categories/${category.assetName}.svg',
                  height: 35.0,
                  width: 35.0,
                  colorFilter: actived
                      ? const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        )
                      : null,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        Text(category.name),
      ],
    );
  }
}
