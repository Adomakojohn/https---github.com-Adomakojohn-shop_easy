import 'package:ecommerce_project/Presentation/screens/auth/login_screen.dart';
import 'package:ecommerce_project/Presentation/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool showLoginScreen = true;
  void switchPages() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return const LogInScreen();
    } else {
      SignUpScreen();
    }
    return const Scaffold();
  }
}
