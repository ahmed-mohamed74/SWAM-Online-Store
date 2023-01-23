import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/pages/product.dart';
import 'package:itit_project/widgets/card.dart';

class HomeStore extends StatefulWidget {
  @override
  _HomeStoreState createState() => _HomeStoreState();
}

class _HomeStoreState extends State<HomeStore> {
  int _currentIndex = 0;

  List imgList = [
    'assets/images/a3.png',
    'assets/images/a1.png',
    'assets/images/a2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CarouselSlider(
              items: imgList.map((imageUrl) {
                return Container(
                  width: double.infinity,
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                onPageChanged: ((index, _) {
                  setState(() {
                    _currentIndex = index;
                  });
                }),
                enableInfiniteScroll: false,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayCurve: Curves.easeIn,
                pageSnapping: false,
                enlargeCenterPage: true,
                autoPlay: true,
                height: 186,
                initialPage: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose',
                      style: TextStyle(
                        color: Color.fromRGBO(45, 47, 96, 0.7),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'CATEGORY',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(41, 43, 90, 1),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          InkWell(
                            child: BCard(0, context),
                            onTap: () {},
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          BCard(1, context),
                          SizedBox(
                            width: 10,
                          ),
                          BCard(2, context),
                          SizedBox(
                            width: 10,
                          ),
                          BCard(3, context),
                          SizedBox(
                            width: 10,
                          ),
                          BCard(4, context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Row(
                    children: [
                      Text(
                        'POPULAR',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromRGBO(41, 43, 90, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 210,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: mostPopular.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (c) {
                            return newScreen(
                                mostPopular[index]['name'],
                                mostPopular[index]['image'],
                                mostPopular[index]['price']);
                          }));
                        },
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      mostPopular[index]['image'],
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
                                      mostPopular[index]['icon'],
                                      color: Colors.black26,
                                    ),
                                    Container(
                                      width: 170,
                                      child: Text(
                                        mostPopular[index]['name'],
                                        style: TextStyle(
                                          color: Color.fromRGBO(41, 43, 90, 1),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${mostPopular[index]['price']} USD',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
