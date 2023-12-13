import 'package:flutter/material.dart';

import '../../_common/theme.dart';

class AuthRegisterSeparator extends StatelessWidget {
  const AuthRegisterSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 0.6,
            color: CubosFoodTheme.sepatorColor,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Cadastre-se',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 0.6,
            color: CubosFoodTheme.sepatorColor,
          ),
        ),
      ],
    );
  }
}
