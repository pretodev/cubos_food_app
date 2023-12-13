import 'package:flutter/material.dart';

import '../../_common/theme.dart';

class AuthRegisterLink extends StatelessWidget {
  const AuthRegisterLink({
    super.key,
    required this.onLinkPressed,
  });

  final VoidCallback onLinkPressed;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      const TextSpan(
        text: 'Não está cadastrado? ',
        children: [
          TextSpan(
            text: 'Crie uma conta',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      style: context.textTheme.bodySmall?.copyWith(
        color: const Color(0xFF636363),
      ),
      textAlign: TextAlign.center,
    );
  }
}
