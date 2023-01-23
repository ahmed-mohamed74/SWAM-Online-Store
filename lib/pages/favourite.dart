import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/pages/product.dart';
import 'package:itit_project/widgets/app_bar.dart';
import 'package:like_button/like_button.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    if (fav.isEmpty) {
      return Scaffold(
        body: Center(
          child: Container(
            child: Text('You don\'t have any favourites!!'),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Text(
                      'Favourites',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(41, 43, 90, 1)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 600,
                width: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: fav.length,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: InkWell(
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 140.0,
                              width: 118.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    fav[index]['image'],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 100,
                                      child: Text(
                                        fav[index]['name'],
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(41, 43, 90, 1)),
                                        overflow: TextOverflow.fade,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${fav[index]['price']} USD',
                                    style: TextStyle(
                                      color: Color.fromRGBO(41, 43, 90, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  fav.removeAt(index);
                                });
                              },
                              icon: Icon(Icons.delete_forever,size: 30,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
