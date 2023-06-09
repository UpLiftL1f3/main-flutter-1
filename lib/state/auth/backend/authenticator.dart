import 'package:firebase_auth/firebase_auth.dart';
import 'package:main_flutter_1/state/posts/typedefs/user_id.dart';

class Authenticator {
  // userId should return a string
  // get the currentUser's uid from firebaseAuth (which should be a string)
  UserId? get userId => FirebaseAuth.instance.currentUser?.uid;

  //* this is saying if you were able to retrieve a currentUser?.uid it means you must've already been logged in
  bool get isAlreadyLoggedIn => userId != null;
}
