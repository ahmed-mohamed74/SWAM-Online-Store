import 'package:flutter/material.dart';
import 'package:itit_project/pages/Store.dart';
import 'package:itit_project/widgets/button1.dart';

class MyAccount extends StatelessWidget {
  String name = 'Ahmed', email = 'ahmed@gmail.com', password = '123';

  MyAccount(this.name, this.email, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(10)),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: <Color>[
                            Color.fromRGBO(45, 47, 96, 0.9),
                            Color.fromRGBO(41, 43, 90, 1),
                            Color.fromRGBO(45, 47, 96, 0.9),
                            Color.fromRGBO(41, 43, 90, 1)
                          ]),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 70.0, bottom: 80, left: 30),
                    child: Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 160,
                    left: 22,
                    width: 320,
                    height: 230,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 90,
                          ),
                          Text(
                            ('NAME: $name'),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(41, 43, 90, 1),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            ('EMAIL: $email'),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(45, 47, 96, 0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 118,
                    top: 105,
                    child: CircleAvatar(
                      maxRadius: 60,
                      backgroundImage:
                          AssetImage('assets/images/fashion/2.webp'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.black12, width: 1),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Logout',
                          style: TextStyle(color: Color.fromRGBO(41, 43, 90, 1)),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.logout,
                          color: Color.fromRGBO(41, 43, 90, 1),
                        ),
                      ],
                    ),
                  ),
                  Btn1('Back To Store', () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                      return Store();
                    }));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
