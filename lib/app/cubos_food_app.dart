import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../business/auth_service.dart';
import '../business/data/auth_status.dart';
import '_common/theme.dart';
import 'auth/login_screen.dart';
import 'auth/splash_screen.dart';
import 'home/home_screen.dart';

class CubosFoodApp extends StatefulWidget {
  const CubosFoodApp({super.key});

  @override
  State<CubosFoodApp> createState() => _CubosFoodAppState();
}

class _CubosFoodAppState extends State<CubosFoodApp> {
  late final _authService = context.read<AuthService>();

  final _navigateKey = GlobalKey<NavigatorState>();

  void _redirect(AuthStatus status) {
    if (status is Authenticated) {
      _navigateKey.currentState?.pushNamedAndRemoveUntil(
        '/home',
        (_) => false,
      );
    }
    if (status is Unauthenticated) {
      _navigateKey.currentState?.pushNamedAndRemoveUntil(
        '/login',
        (_) => false,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _authService.authenticate().listen(_redirect);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubos Food',
      theme: CubosFoodTheme.instance,
      initialRoute: '/splash',
      navigatorKey: _navigateKey,
      routes: {
        '/splash': (_) => const SplashScreen(),
        '/login': (_) => const LoginScreen(),
        '/home': (_) => const HomeScreen(),
      },
    );
  }
}
