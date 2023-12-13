import 'user.dart';

sealed class AuthStatus {}

class Authenticated extends AuthStatus {
  final User user;

  Authenticated(this.user);
}

class Unauthenticated extends AuthStatus {}

class Unknown extends AuthStatus {}
