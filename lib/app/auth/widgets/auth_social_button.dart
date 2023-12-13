import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthSocialButton extends StatelessWidget {
  const AuthSocialButton._({
    super.key,
    required this.service,
    required this.onPressed,
  });

  factory AuthSocialButton.google({
    Key? key,
    required VoidCallback onPressed,
  }) {
    return AuthSocialButton._(
      key: key,
      service: 'google',
      onPressed: onPressed,
    );
  }

  factory AuthSocialButton.facebook({
    Key? key,
    required VoidCallback onPressed,
  }) {
    return AuthSocialButton._(
      key: key,
      service: 'facebook',
      onPressed: onPressed,
    );
  }

  factory AuthSocialButton.apple({
    Key? key,
    required VoidCallback onPressed,
  }) {
    return AuthSocialButton._(
      key: key,
      service: 'apple',
      onPressed: onPressed,
    );
  }

  final String service;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: SvgPicture.asset(
        'assets/icons/$service.svg',
        width: 24,
        height: 24,
      ),
    );
  }
}
