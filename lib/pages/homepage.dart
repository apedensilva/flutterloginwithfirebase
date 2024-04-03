import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testproject1/components/logoutbtn.dart';
import 'package:testproject1/components/methods.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text('Logged In Successful \n Welcome ' + user.email!),
          const Logoutbtn(
            onTap: signOutUser,
          ),
        ],
      )),
    );
  }
}
