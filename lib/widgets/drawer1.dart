import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/pages/favourite.dart';
import 'package:itit_project/pages/login.dart';
import 'package:itit_project/pages/my_account.dart';
import 'package:itit_project/pages/settings.dart';

Widget drw(context, {String AccName, String email, AssetImage image}) {
  return Drawer(
      child: Container(
    color: Color.fromRGBO(41, 43, 90, 1),
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(AccName),
          accountEmail: Text(email),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/images/m.png'),
          ),
          decoration: BoxDecoration(color: Color.fromRGBO(41, 43, 90, 1)),
        ),
        Card(
          color: Colors.grey.shade200,
          child: ListTile(
            title: Text('My Account'),
            trailing: IconButton(
              icon: Icon(Icons.account_circle_outlined),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return MyAccount(myUsers[0]['name'], myUsers[0]['email'],
                      myUsers[0]['password']);
                }));
              },
            ),
          ),
        ),
        Card(
          color: Colors.grey.shade200,
          child: ListTile(
            title: Text('Setting'),
            trailing: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Setting();
                }));
              },
            ),
          ),
        ),
        Card(
          color: Colors.grey.shade200,
          child: ListTile(
            title: Text('Favourite'),
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Favourite();
                }));
              },
            ),
          ),
        ),
        Card(
          color: Colors.grey.shade200,
          child: ListTile(
            title: Text('Log out'),
            trailing: IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
                  return LoginScreen();
                }));
              },
            ),
          ),
        ),
      ],
    ),
  ));
}
