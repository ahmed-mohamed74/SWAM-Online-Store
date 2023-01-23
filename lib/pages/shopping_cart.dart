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
            var t = CounterLogic.getObject(context);
            return Scaffold(
              appBar: EAppBar('Shopping Cart', context),
              body: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (int i = 0; i < cart.length; i++)
                            Column(
                              children: [
                                BlocProvider(
                                  create: (context) => CounterLogic(),
                                  child:
                                  BlocConsumer<CounterLogic, CounterState>(
                                    listener: (context, state) {},
                                    builder: (context, state) {
                                      var obj = CounterLogic.getObject(context);
                                      return Row(
                                        children: [
                                          Container(
                                              height: 150,
                                              width: 140,
                                              child: Image.asset(
                                                cart[i]['image'],
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
                                                            cart[i]['name'],
                                                            style: TextStyle(
                                                                fontSize: 15),
                                                            overflow:
                                                            TextOverflow
                                                                .clip,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(
                                                          ('${cart[i]['price']} USD'),
                                                          style: TextStyle(
                                                            color:
                                                            Color.fromRGBO(
                                                                41,
                                                                43,
                                                                90,
                                                                1),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 30,
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          cart.removeAt(i);
                                                        });
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
                                                    MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: Colors.black,
                                                        ),
                                                        onPressed: () {
                                                          setState(() {
                                                            obj.PlusCounter();
                                                            t.c += 1 *
                                                                double.parse(
                                                                    cart[
                                                                    i]
                                                                    ['price']);
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        '${obj.c.toInt()}',
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
                                                          Icons
                                                              .minimize_rounded,
                                                          color: Colors.black,
                                                        ),
                                                        onPressed: () {
                                                          setState(() {
                                                            obj.MinusCounter();
                                                            t.c -= 1 *
                                                                double.parse(
                                                                    cart[
                                                                    i]
                                                                    ['price']);
                                                          });
                                                        },
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                Divider(),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('\$${t.c.toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color.fromRGBO(41, 43, 90, 1),
                                      )),
                                ],
                              ),
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
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }
  }
}
