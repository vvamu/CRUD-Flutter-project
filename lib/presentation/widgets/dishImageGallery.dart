import 'package:flutter/material.dart';
import 'package:one/presentation/widgets/dishCart.dart';

class DishImageCart extends StatefulWidget {
  final DishCartState _dishCart;
  @override
  State<StatefulWidget> createState() => DishImageCartState(_dishCart);
  DishImageCart(this._dishCart);
}

class DishImageCartState extends State<DishImageCart> {
  final DishCartState dishCart;
  DishImageCartState(this.dishCart);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Image(
          alignment: Alignment.topCenter,
          image: dishCart.assetImage,
          width: MediaQuery.of(context).size.width,
          height: 400,
        ),
        Image(
          alignment: Alignment.topCenter,
          image: dishCart.assetImage,
          width: MediaQuery.of(context).size.width,
          height: 400,
        ),
        Image(
          alignment: Alignment.topCenter,
          image: dishCart.assetImage,
          width: MediaQuery.of(context).size.width,
          height: 400,
        )
      ],
    );
  }
}
