import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../_common/shapes/elipse.dart';
import '../../_common/theme.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({
    super.key,
    required this.ratedRestaurants,
  });

  final int ratedRestaurants;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Positioned(
          top: -330,
          left: -340,
          child: Elipse(
            height: 406.0 * (size.height / 390),
            width: 445.0 * (size.width / 390),
            opacity: 0.2,
            color: const Color(0xFFD818A5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'O que você gostaria de comer?',
                      style: context.textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      '$ratedRestaurants Restaurantes avaliados',
                      style: context.textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                        color: const Color(0xFF798184),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: FilledButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/sacola.svg',
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      const Text('2'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
