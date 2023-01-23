import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/pages/test.dart';
import 'package:itit_project/widgets/app_bar.dart';
import 'package:like_button/like_button.dart';

class newScreen extends StatelessWidget {
  String name, image, price;

  newScreen(this.name, this.image, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(name, context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                SizedBox(
                  width: 300,
                  height: 250,
                  child: Image.asset(image),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: LikeButton(
                    onTap: (t) async {
                      fav.add(
                        {'name': name, 'image': image, 'price': price},
                      );
                      return !t;
                    },
                    circleColor: CircleColor(
                        start: Color(0xFFF44336), end: Color(0xFFF44336)),
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.favorite,
                        size: 30,
                        color: isLiked ? Colors.red : Colors.grey,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          proData(name, '$price', image),
        ],
      ),
    );
  }
}
