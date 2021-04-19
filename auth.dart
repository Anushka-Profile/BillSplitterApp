import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

class CustomUser {
  final String uid;
  final String email;

  CustomUser({this.uid, this.email});
}

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;

  CustomUser _getFbUser(User user) {
    return user != null ? CustomUser(uid: user.uid, email: user.email) : null;
  }

  Stream<CustomUser> get user {
    return auth.onAuthStateChanged.map(_getFbUser);
  }

  Future login(String email, String password) async {
    try {
      UserCredential result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _getFbUser(user);
    } catch (e) {
      print(e.toString());
    }
  }

  Future register(String email, String password) async {
    try {
      UserCredential result = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _getFbUser(user);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signOut() async {
    try {
      return await auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
