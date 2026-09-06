import 'package:flutter/material.dart';

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
    // TODO : Add pages for each navigation item
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _icons.elementAt(_selectedIndex), //Important: just a placeholder
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
