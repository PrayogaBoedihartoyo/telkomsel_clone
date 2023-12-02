import 'package:flutter/material.dart';
import 'package:telkomsel_clone/screens/explore/explore.dart';
import 'package:telkomsel_clone/screens/home/home.dart';
import 'package:telkomsel_clone/screens/menu/menu.dart';
import 'package:telkomsel_clone/screens/poin/poin.dart';
import 'package:telkomsel_clone/screens/shop/shop.dart';
import 'package:telkomsel_clone/themes.dart';

class ButtonNavBar extends StatefulWidget {
  const ButtonNavBar({super.key});

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    const HomePage(),
    const PoinPage(),
    const ShopPage(),
    const ExplorePage(),
    const MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget CustomNavBar() {
      return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedLabelStyle: bottomNavText,
        unselectedLabelStyle: bottomNavText,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                'assets/icons/Icon-home.png', width: 21,
                color: _selectedIndex == 0 ? redColor : greyColor,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset('assets/icons/trophy.png', width: 24,
                color: _selectedIndex == 1 ? redColor : greyColor,
              ),
            ),
            label: 'Poin',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset('assets/icons/shopping-cart.png', width: 25,
                color: _selectedIndex == 2 ? redColor : greyColor,
              ),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset('assets/icons/Rocket.png', width: 27,
                color: _selectedIndex == 3 ? redColor : greyColor,
              ),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset('assets/icons/menu.png', width: 20,
                color: _selectedIndex == 4 ? redColor : greyColor,
              ),
            ),
            label: 'Menu',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: CustomNavBar(),
      body: _screens.elementAt(_selectedIndex),
    );
  }
}
