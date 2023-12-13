import 'package:flutter/material.dart';

import '../../_common/theme.dart';

class AuthAppName extends StatelessWidget {
  const AuthAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      const TextSpan(
        text: 'Cubos ',
        children: [
          TextSpan(
            text: 'Food',
            style: TextStyle(
              color: CubosFoodTheme.color1,
            ),
          ),
        ],
      ),
      style: context.textTheme.displayLarge?.copyWith(
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }
}
