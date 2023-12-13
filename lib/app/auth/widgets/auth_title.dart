import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../_common/theme.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Entrar',
              style: context.textTheme.headlineMedium,
            ),
            const SizedBox(width: 8),
            SvgPicture.asset('assets/icons/account.svg'),
          ],
        ),
        Text(
          'Bem vindo ao Cubos Food!',
          style: context.textTheme.titleMedium,
        ),
      ],
    );
  }
}
