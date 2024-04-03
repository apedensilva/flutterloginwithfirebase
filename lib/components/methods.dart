// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final usernameController = TextEditingController();
final passwordController = TextEditingController();
//text editing controllers

void signOutUser() {
  FirebaseAuth.instance.signOut();
} // FOR USER SIGNOUT

void signUserIn(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      });
  try {
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text, password: passwordController.text);
    Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
} //FOR SIGN IN

void registerUser() {}
