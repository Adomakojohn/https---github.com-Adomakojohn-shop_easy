import 'package:ecommerce_project/Presentation/screens/auth/auth_page2.dart';
import 'package:ecommerce_project/Presentation/screens/auth/login_screen.dart';
import 'package:ecommerce_project/Presentation/screens/bottom_nav_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const BottomNavBar();
            } else {
              return const LogInScreen();
            }
          }),
    );
  }
}
