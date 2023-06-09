import 'package:flutter/foundation.dart' show immutable;

@immutable
class Constants {
  // an error constant
  static const accountExistsWithDifferentCredential =
      "account-exists-with-different-credential";

  // google
  static const googleCom = "google.com";

  // email
  static const emailScope = "email";

  //? Not really sure what this is doing yet
  const Constants._();
}
