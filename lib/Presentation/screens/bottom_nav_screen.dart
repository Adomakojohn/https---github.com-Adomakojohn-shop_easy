import 'package:ecommerce_project/Presentation/screens/home_screen.dart';
import 'package:ecommerce_project/Presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  void selectedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const SettingsScreen(),
    const SettingsScreen(),
    const SettingsScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () => Navigator.pushNamed(context, 'productspage'),
        tooltip: 'Shop',
        child: const Image(
          image: AssetImage("assets/icons/Cart.png"),
          height: 30,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromARGB(223, 243, 60, 60),
          currentIndex: selectedIndex,
          onTap: selectedItem,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("assets/icons/Home.png"),
                  height: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("assets/icons/Heart.png"),
                  height: 30,
                ),
                label: "Wishlist"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("assets/icons/Search.png"),
                  height: 30,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("assets/icons/Settings.png"),
                  height: 30,
                ),
                label: "Settings"),
          ]),
      body: _pages[selectedIndex],
    );
  }
}
