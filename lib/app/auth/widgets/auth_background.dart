import 'package:flutter/material.dart';

import '../../_common/shapes/elipse.dart';
import '../../_common/theme.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      color: Colors.white,
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            top: -280,
            left: -240,
            child: Elipse(
              height: 406.0 * (size.height / 390),
              width: 445.0 * (size.width / 390),
              opacity: 0.2,
              color: const Color(0xFFD818A5),
            ),
          ),
          Positioned(
            top: -200,
            left: 30,
            child: Elipse(
              height: 342.0 * (size.height / 390),
              width: 342.0 * (size.width / 390),
              opacity: 0.2,
              color: CubosFoodTheme.color1,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
