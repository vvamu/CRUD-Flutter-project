import 'dart:io';

import 'package:flutter/material.dart';
import 'package:one/presentation/dishPage.dart';

class DishCart extends StatefulWidget {
  final String _imageUrl;
  final String _title;
  final String _description;
  @override
  State<StatefulWidget> createState() =>
      DishCartState(_imageUrl, _title, _description);
  DishCart(
      [this._imageUrl = "images/yukako.jpg",
      this._title = "Default",
      this._description = "default desctiption"]);
}

class DishCartState extends State<DishCart> {
  final String imageUrl;
  late AssetImage assetImage;
  final String title;
  final String description;
  DishCartState(this.imageUrl, this.title, this.description) {
    this.assetImage = AssetImage("lib/assets/images/${imageUrl}");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DishPage(this)));
        },
        child: Stack(children: <Widget>[
          SizedBox(
            height: 400,
            width: 300, //if width is dynamic -
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                  image: DecorationImage(
                      image: assetImage,
                      fit: BoxFit.cover,
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(99, 0, 0, 0), BlendMode.hue))),
              child: Stack(children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(right: 30),
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          description,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 30),
                        child: const Text(
                          "Author 3",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ])
              ]),
            ),
          )
        ]));
  }
}
