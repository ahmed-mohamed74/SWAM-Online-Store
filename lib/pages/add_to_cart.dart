import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itit_project/counter/counter_logic.dart';
import 'package:itit_project/counter/counter_state.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/widgets/app_bar.dart';

class CartView extends StatefulWidget {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    if (cart.isEmpty) {
      return Scaffold(
        appBar: EAppBar('Shopping Cart', context),
        body: Center(
          child: Container(
            child: Text('YOUR CART IS EMPTY!!'),
          ),
        ),
      );
    } else {
      return BlocProvider(
        create: (context) => CounterLogic(),
        child: BlocConsumer<CounterLogic, CounterState>(
          listener: (context, state) {},
          builder: (context, state) {
            var obj = CounterLogic.getObject(context);
            double t;
            for (int x = 0; x < cart.length; x++) {
              t = double.parse(cart[x]['price']) * obj.c;
            }
            void sum(int i) {
              setState(() {
                t = double.parse(cart[i]['price']) * obj.c;
              });
            }
            return Scaffold(
                appBar: EAppBar('Shopping Cart', context),
                body: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Container(
                                  height: 140,
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 140,
                                          child: Image.asset(
                                            'assets/images/m.png',
                                            fit: BoxFit.fill,
                                          )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      width: 110,
                                                      height: 50,
                                                      child: Text(
                                                        cart[index]['name'],
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                        overflow:
                                                            TextOverflow.clip,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      ('${cart[index]['price']} USD'),
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            41, 43, 90, 1),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    setState(() {});
                                                  },
                                                  icon: Icon(
                                                      Icons.delete_forever),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                                width: 170,
                                                color: Colors.grey.shade200,
                                                height: 50,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    IconButton(
                                                      icon: Icon(
                                                        Icons.add,
                                                        color: Colors.black,
                                                      ),
                                                      onPressed: () {
                                                        setState(() {
                                                          obj.PlusCounter();
                                                          sum(index);
                                                        });
                                                      },
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      '${obj.c}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    IconButton(
                                                      icon: Icon(
                                                        Icons.minimize_rounded,
                                                        color: Colors.black,
                                                      ),
                                                      onPressed: () {
                                                        setState(() {
                                                          obj.MinusCounter();
                                                          sum(index);
                                                        });
                                                      },
                                                    )
                                                  ],
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  ));
                            },
                            itemCount: cart.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                height: 15,
                              );
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text('\$${t}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color.fromRGBO(41, 43, 90, 1),
                                    )),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              height: 100,
                              width: 180,
                              child: MaterialButton(
                                onPressed: () {},
                                color: Color.fromRGBO(41, 43, 90, 1),
                                child: Text(
                                  'CHECKOUT',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ]),
                    )
                  ],
                ));
          },
        ),
      );
    }
  }
}
