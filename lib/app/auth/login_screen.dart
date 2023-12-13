import 'package:flutter/material.dart';

import '../_common/theme.dart';
import 'widgets/auth_app_name.dart';
import 'widgets/auth_background.dart';
import 'widgets/auth_register_link.dart';
import 'widgets/auth_register_separator.dart';
import 'widgets/auth_social_button.dart';
import 'widgets/auth_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 56.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AuthTitle(),
                const SizedBox(height: 80),
                const AuthAppName(),
                const SizedBox(height: 40),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    hintText: 'Insira seu e-mail',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        hintText: 'Insira sua senha',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    Text(
                      'Esqueceu sua senha?',
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: const Color(0xFF3613AA),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                FilledButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text('Entrar'),
                ),
                const SizedBox(height: 40),
                const AuthRegisterSeparator(),
                const SizedBox(height: 34),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AuthSocialButton.google(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      ),
                      const SizedBox(width: 20),
                      AuthSocialButton.facebook(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      ),
                      const SizedBox(width: 20),
                      AuthSocialButton.apple(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 54),
                AuthRegisterLink(
                  onLinkPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
