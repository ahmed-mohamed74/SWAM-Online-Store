import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/pages/category.dart';

Widget BCard(int index, context) {
  List<Map> category = [
    {'name': 'Electronics', AssetImage: 'assets/images/elec.png'},
    {'name': 'Mobile Phone', AssetImage: 'assets/images/mob.png'},
    {'name': 'Grocery', AssetImage: 'assets/images/gro.png'},
    {'name': 'Home', AssetImage: 'assets/images/home.png'},
    {'name': 'Fashion', AssetImage: 'assets/images/fash.png'},
  ];
  return InkWell(
    onTap: () {
      if (category[index]['name'] == 'Electronics') {
        Navigator.of(context).push(MaterialPageRoute(builder: (c) {
          return CategoryPage(category[index]['name'], productList);
        }));
      } else if (category[index]['name'] == 'Mobile Phone') {
        Navigator.of(context).push(MaterialPageRoute(builder: (c) {
          return CategoryPage(category[index]['name'], Mobile);
        }));
      } else if (category[index]['name'] == 'Grocery') {
        Navigator.of(context).push(MaterialPageRoute(builder: (c) {
          return CategoryPage(category[index]['name'], grocery);
        }));
      } else if (category[index]['name'] == 'Home') {
        Navigator.of(context).push(MaterialPageRoute(builder: (c) {
          return CategoryPage(category[index]['name'], home);
        }));
      } else if (category[index]['name'] == 'Fashion') {
        Navigator.of(context).push(MaterialPageRoute(builder: (c) {
          return CategoryPage(category[index]['name'], fashion);
        }));
      }
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              category[index][AssetImage],
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            )),
        Text(category[index]['name']),
      ],
    ),
  );
}
