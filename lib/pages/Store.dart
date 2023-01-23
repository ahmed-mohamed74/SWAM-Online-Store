import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/home.dart';
import 'package:itit_project/pages/category.dart';
import 'package:itit_project/pages/favourite.dart';
import 'package:itit_project/pages/my_account.dart';
import 'package:itit_project/pages/product.dart';
import 'package:itit_project/widgets/app_bar.dart';
import 'package:itit_project/widgets/card.dart';
import 'package:itit_project/widgets/drawer1.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  List imgList = [
    'assets/images/a4.png',
    'assets/images/a5.png',
    'assets/images/a6.png',
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      HomeStore(),
      Favourite(),
      MyAccount(
          myUsers[1]['name'], myUsers[1]['email'], myUsers[1]['password']),
    ];
    return Scaffold(
      appBar: EAppBar('SWAM Store', context),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.grey.shade200,
            icon: Icon(
              Icons.home,
              color: Color.fromRGBO(41, 43, 90, 1),
            ),
            label: 'home',
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
      ),
      body: Container(child: tabs[_currentIndex]),
      drawer: drw(
        context,
        AccName: myUsers[0]['name'],
        email: myUsers[0]['email'],
        image: AssetImage('assets/images/a1.jpg'),
      ),
    );
  }
}
