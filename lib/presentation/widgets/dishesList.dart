import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:one/presentation/widgets/dishCart.dart';

class DishesList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new DishesListState();
}

class DishesListState extends State<DishesList> {
  //int countCarts = 300;
  get countCarts => (MediaQuery.of(context).size.width / 400).floor();
  List<Widget> carts() {
    var listCarts = <Widget>[];
    for (int i = 0; i < countCarts; i++) {
      listCarts.add(DishCart((i + 1 % 3).toString() + ".jpg"));
    }
    return listCarts;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (item, index) {
      // return new ListTile(title: new Text("Hello"),)

      return Container(
        height: 450,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
        child: Row(
          //Row
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: carts(),
        ),
      );
    });
  }
}
