import 'package:flutter/material.dart';
import 'package:stepz_store/core/theme/theme.dart';
import 'package:stepz_store/features/Cart/pages/cart_page.dart';
import 'package:stepz_store/features/Home/pages/home_page.dart';
import 'package:stepz_store/features/Profile/pages/profile_page.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int _selectedIndex = 0;
  List<Widget> _icons = [
    Icon(Icons.home),
    Icon(Icons.shopping_cart),
    Icon(Icons.person),
  ];

  List<Widget> _pages = [
    const HomePage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex), //Important: just a placeholder
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: AppTheme.primaryColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: AppTheme.primaryColor),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: AppTheme.primaryColor),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
