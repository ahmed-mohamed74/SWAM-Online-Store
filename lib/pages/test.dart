import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';

proData(String name, String price,String image) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$price USD',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    child: IconButton(
                        onPressed: () {
                          cart.add({'name': name, 'price': price,'image':image});
                        },
                        icon: Icon(Icons.add),
                        color: Colors.white),
                    backgroundColor: Color.fromRGBO(41, 43, 90, 1),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}
