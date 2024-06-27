import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import Cupertino icons

class BottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  BottomNavigation({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,//when not clicked
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.home_outlined,
            color: Colors.blue,//when clicked
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.bag,
            color: Colors.black,
          ),
          activeIcon: Icon(
            CupertinoIcons.bag,
            color: Colors.blue,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outlined,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.person_outlined,
            color: Colors.blue,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: onItemTapped,
    );
  }
}
