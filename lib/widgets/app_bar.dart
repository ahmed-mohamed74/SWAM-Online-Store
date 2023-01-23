import 'package:flutter/material.dart';
import 'package:itit_project/pages/shopping_cart.dart';

Widget EAppBar(String name, context) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Color.fromRGBO(41, 43, 90, 1),
    ),
    backgroundColor: Colors.transparent,
    toolbarHeight: 60,
    elevation: 0,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
      ),
    ),
    title: Center(
      child: Text(
        name,
        style: TextStyle(
          fontSize: 25,
          color: Color.fromRGBO(41, 43, 90, 1),
        ),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartView()));
        },
        icon: Icon(Icons.shopping_cart),
        color: Color.fromRGBO(41, 43, 90, 1),
      ),
    ],
  );
}
