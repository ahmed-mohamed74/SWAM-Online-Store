import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.grey.shade200,
          icon: Icon(
            Icons.home,
            color: Color.fromRGBO(41, 43, 90, 1),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_sharp,
            color: Color.fromRGBO(41, 43, 90, 1),
          ),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: Color.fromRGBO(41, 43, 90, 1),
          ),
          label: 'Account',
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
