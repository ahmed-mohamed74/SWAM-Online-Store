import 'package:flutter/material.dart';
import 'package:itit_project/pages/login.dart';
import 'package:itit_project/widgets/app_bar.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatefulWidget {
  const LottieScreen() : super();

  @override
  _LottieScreenState createState() => _LottieScreenState();
}

class _LottieScreenState extends State<LottieScreen>
    with SingleTickerProviderStateMixin {
  AnimationController lottieController;

  @override
  void initState() {
    super.initState();

    lottieController = AnimationController(
      vsync: this,
    );

    lottieController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
        lottieController.reset();
      }
    });
  }

  @override
  void dispose() {
    lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SWAM Store',
            style: TextStyle(
                fontSize: 26,
                color: Color.fromRGBO(41, 43, 90, 1),
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Lottie.asset("assets/images/store1.json", animate: true),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                return LoginScreen();
              }));
            },
            style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
            child: const Text(
              "Welcome To SWAM Store",
              style: TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
