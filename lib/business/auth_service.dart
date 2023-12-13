import 'dart:async';

import 'data/auth_status.dart';
import 'data/credentials.dart';
import 'data/user.dart';

class AuthService {
  final _controller = StreamController<AuthStatus>();

  AuthService() {
    _controller.add(Unknown());
  }

  Stream<AuthStatus> authenticate() async* {
    await Future.delayed(const Duration(seconds: 10));
    _controller.add(Unauthenticated());
    yield* _controller.stream;
  }

  void login(Credentials credentials) {
    final user = User(
      id: 'id01',
      name: 'Silas',
      email: 'silas@gmail.com',
    );
    _controller.add(Authenticated(user));
  }

  void logout() {
    _controller.add(Unauthenticated());
  }
}
