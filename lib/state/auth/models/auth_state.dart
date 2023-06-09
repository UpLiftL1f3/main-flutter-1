import 'package:flutter/foundation.dart' show immutable;
import 'package:main_flutter_1/state/auth/models/auth_result.dart';
import 'package:main_flutter_1/state/posts/typedefs/user_id.dart';

@immutable
class AuthState {
  // obviously the result of the auth process
  final AuthResult? result;
  // status
  final bool isLoading;
  //? (assuming) passed in user id
  final UserId? userId;

  const AuthState({
    required this.result,
    required this.isLoading,
    required this.userId,
  });

  // default AuthState
  const AuthState.unknown()
      : result = null,
        isLoading = false,
        userId = null;

  // this function pretty much recreated the currentValue of AuthState but uses the passed in param of isLoading rather than the current AuthState's isLoading
  AuthState copyWithIsLoading(bool isLoading) => AuthState(
        result: result,
        isLoading: isLoading,
        userId: userId,
      );

  //* we are redefining what the == operator is doing and in this case were guaranteeing that we are verifying that == means if all of the auth state values match
  @override
  bool operator ==(covariant AuthState other) =>
      identical(this, other) ||
      (result == other.result &&
          isLoading == other.isLoading &&
          userId == other.userId);

  @override
  int get hashCode => Object.hash(
        result,
        isLoading,
        userId,
      );
}
