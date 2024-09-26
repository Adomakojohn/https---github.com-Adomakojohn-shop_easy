import 'package:ecommerce_project/models/cart_model.dart';
import 'package:ecommerce_project/screens/auth/auth_page.dart';
import 'package:ecommerce_project/screens/auth/login_screen.dart';
import 'package:ecommerce_project/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_project/screens/bottom_nav_screen.dart';
import 'package:ecommerce_project/screens/product_pages/cart_page.dart';
import 'package:ecommerce_project/screens/product_pages/product_details.page.dart';
import 'package:ecommerce_project/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_project/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        home: const AuthPage(),
        routes: {
          'homescreen': (context) => const HomeScreen(),
          'settingscreen': (context) => const SettingsScreen(),
          'bottomnavscreen': (context) => const BottomNavBar(),
          'signupscreen': (context) => const SignUpScreen(),
          'loginscreen': (context) => const LogInScreen(),
          'productdetailspage': (context) => const ProductDetailsPage(),
          'cartscreen': (context) => const CartPage(),
        },
      ),
    );
  }
}
