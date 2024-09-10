import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_project/Presentation/screens/auth/auth_page.dart';
import 'package:ecommerce_project/Presentation/screens/auth/login_screen.dart';
import 'package:ecommerce_project/Presentation/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_project/Presentation/screens/bottom_nav_screen.dart';
import 'package:ecommerce_project/Presentation/screens/products_page.dart';
import 'package:ecommerce_project/Presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_project/Presentation/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dotenv.load(fileName: ".env");
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AuthPage(),
      routes: {
        'homescreen': (context) => const HomeScreen(),
        'settingscreen': (context) => const SettingsScreen(),
        'bottomnavscreen': (context) => const BottomNavBar(),
        'signupscreen': (context) => SignUpScreen(),
        'productspage': (context) => const ProductsPage(),
        'loginscreen': (context) => const LogInScreen()
      },
    );
  }
}
