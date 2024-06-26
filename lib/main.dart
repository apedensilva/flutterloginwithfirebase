import 'package:flutter/material.dart';
import 'package:testproject1/Auth_page/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainDart());
}

class MainDart extends StatelessWidget {
  const MainDart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthenticationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
