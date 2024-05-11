import 'package:firebase_auth/firebase_auth.dart';

import '../user_repository.dart';

abstract class UserRepository {

  Stream<User?> get user;

  Future<MyUser> getMyUser(String userId);

  Future<void> signIn(String email, String password);

  Future<MyUser> signUp(MyUser myUser, String email);

  Future<void> setUserData(MyUser user);

  Future<void> resetPassword(String email);

  Future<void> logOut();
}