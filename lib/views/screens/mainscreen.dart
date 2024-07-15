import 'package:flutter/material.dart';
import 'package:kotlinflutterecommerce/views/screens/navigationscreen/cartscreen.dart';
import 'package:kotlinflutterecommerce/views/screens/navigationscreen/favouritescreen.dart';
import 'package:kotlinflutterecommerce/views/screens/navigationscreen/homescreen.dart';
import 'package:kotlinflutterecommerce/views/screens/navigationscreen/profilescreen.dart';
import 'package:kotlinflutterecommerce/views/screens/navigationscreen/storescreen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const FavouriteScreen(),
    const StoreScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mukena Fashion Hub'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.red : Colors.black,
              size: _selectedIndex == 0 ? 40 : 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: _selectedIndex == 1 ? Colors.red : Colors.black,
              size: _selectedIndex == 1 ? 40 : 30,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store,
              color: _selectedIndex == 2 ? Colors.red : Colors.black,
              size: _selectedIndex == 2 ? 40 : 30,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: _selectedIndex == 3 ? Colors.red : Colors.black,
              size: _selectedIndex == 3 ? 40 : 30,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 4 ? Colors.red : Colors.black,
              size: _selectedIndex == 4 ? 40 : 30,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
      body: _pages[_selectedIndex],
    );
  }
}
