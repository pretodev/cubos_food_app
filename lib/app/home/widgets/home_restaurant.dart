import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../business/data/restaurant.dart';
import '../../_common/theme.dart';

class HomeRestaurant extends StatelessWidget {
  const HomeRestaurant({
    super.key,
    required this.restaurant,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final tags = restaurant.tags.join(' · ');
    final rating = (restaurant.rating * 100).toInt();
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFFF1F2F6),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              restaurant.imageUrl,
              fit: BoxFit.fitWidth,
              height: 229,
              width: double.maxFinite,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(restaurant.name, style: context.textTheme.titleSmall),
          const SizedBox(height: 4.0),
          Text(
            tags,
            style: context.textTheme.bodySmall
                ?.copyWith(color: const Color(0xFF8F9698)),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              SvgPicture.asset('assets/icons/small.svg'),
              const SizedBox(width: 6.0),
              Text(
                '$rating%',
                style: context.textTheme.bodySmall?.copyWith(
                  color: CubosFoodTheme.color1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
