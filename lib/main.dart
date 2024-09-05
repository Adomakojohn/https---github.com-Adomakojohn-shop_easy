import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_project/screens/bottom_nav_screen.dart';
import 'package:ecommerce_project/screens/login_screen.dart';
import 'package:ecommerce_project/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_project/screens/home_screen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LogInScreen(),
      routes: {
        'homescreen': (context) => const HomeScreen(),
        'settingscreen': (context) => const SettingsScreen(),
        'bottomnavscreen': (context) => const BottomNavBar(),
      },
    );
  }
}
