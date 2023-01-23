import 'package:flutter/material.dart';

Widget Btn1(String name, Function function) {
  return MaterialButton(
    minWidth: 220,
    height: 40,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    onPressed: function,
    child: Text(
      name,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    color: Color.fromRGBO(45, 47, 96, 0.9),
  );
}
