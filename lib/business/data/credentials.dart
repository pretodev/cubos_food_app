abstract class Credentials {}

class EmailCredentials extends Credentials {
  final String email;
  final String password;

  EmailCredentials(this.email, this.password);
}

class GoogleCredentials extends Credentials {}

class FacebookCredentials extends Credentials {}

class AppleCredentials extends Credentials {}
