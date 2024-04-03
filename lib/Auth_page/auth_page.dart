import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testproject1/pages/homepage.dart';
import 'package:testproject1/pages/login_page.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is login
          if (snapshot.hasData) {
            return Homepage();
          } else {
            return LoginPage();
          }
          //user is not logged in
        },
      ),
    );
  }
}
