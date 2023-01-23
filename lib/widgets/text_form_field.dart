import 'package:flutter/material.dart';

Widget Text_Form(TextEditingController controller, TextInputType keyboardType,
    String name, IconData icon) {
  return Card(
    elevation: 3,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          labelText: (name),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(8.0),
          ),
          prefixIcon: Icon(
            icon,
            color: Color.fromRGBO(45, 47, 96, 0.9),
          )),
    ),
  );
}
