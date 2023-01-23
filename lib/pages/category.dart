import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/pages/product.dart';
import 'package:itit_project/widgets/app_bar.dart';
import 'package:like_button/like_button.dart';

class CategoryPage extends StatelessWidget {
  String pageName = '';
  List list = productList;

  CategoryPage(this.pageName, this.list);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(pageName, context),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 680,
          width: 400,
          child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: InkWell(
                onTap: () {
                  if (pageName == 'Electronics') {
                    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                      return newScreen(
                        productList[index]['name'],
                        productList[index]['image'],
                        productList[index]['price'],
                      );
                    }));
                  } else if (pageName == 'Mobile Phone') {
                    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                      return newScreen(
                        Mobile[index]['name'],
                        Mobile[index]['image'],
                        Mobile[index]['price'],
                      );
                    }));
                  } else if (pageName == 'Grocery') {
                    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                      return newScreen(
                        grocery[index]['name'],
                        grocery[index]['image'],
                        grocery[index]['price'],
                      );
                    }));
                  } else if (pageName == 'Home') {
                    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                      return newScreen(
                        home[index]['name'],
                        home[index]['image'],
                        home[index]['price'],
                      );
                    }));
                  } else if (pageName == 'Fashion') {
                    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                      return newScreen(
                        fashion[index]['name'],
                        fashion[index]['image'],
                        fashion[index]['price'],
                      );
                    }));
                  }
                },
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              list[index]['image'],
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              list[index]['icon'],
                              color: Colors.black26,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 100,
                                child: Text(
                                  list[index]['name'],
                                  style: TextStyle(
                                    color: Color.fromRGBO(41, 43, 90, 1),
                                  ),
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ),
                            Text(
                              '${list[index]['price']} USD',
                              style: TextStyle(
                                color: Color.fromRGBO(41, 43, 90, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
