import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class User {
  User({@required this.uid});
  final String uid;
}

abstract class AuthBase {
  Future<User> currentUser();
  Future<User> signInAnonymously();
  Future<void> signOut();
}

class Auth {
  User _userFromFirebase(FirebaseUser user) {
    if (user == null) {
      return null;
    }
    return User(uid: user.uid);
  }

  Future<User> currentUser() async {
    final user = await FirebaseAuth.instance.currentUser();
    return _userFromFirebase(user);
  }

  Future<User> signInAnonymously() async {
    final authResult = await FirebaseAuth.instance.signInAnonymously();
    return _userFromFirebase(authResult.user);
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
