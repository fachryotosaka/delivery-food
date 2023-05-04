import 'package:flutter/material.dart';
import 'package:umkm/screens/food_menu.dart';
import 'package:umkm/screens/home_screens.dart';
import 'package:umkm/screens/order_screen.dart';
import 'package:umkm/screens/profile_screen.dart';

class Core extends StatefulWidget {
  const Core({super.key});

  @override
  State<Core> createState() => _CoreState();
}

class _CoreState extends State<Core> {
  final List<Widget> _pages = [
    const HomeScreen(),
    const FoodMenu(),
    const OrderScreen(),
    const Profile(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF292D32).withOpacity(0.2),
              spreadRadius: 0.1,
              blurRadius: 60,
              offset: const Offset(0, -1), // changes position of shadow
            ),
          ],
        ),
        height: 80,
        child: BottomNavigationBar(
          showSelectedLabels: false, //selected item
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          unselectedItemColor: const Color(0xFF292D32).withOpacity(0.8),
          selectedItemColor: const Color(0xFF292D32).withOpacity(0.4),
          iconSize: 26,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),

        //New
      ),
    );
  }
}
