import 'package:flutter/material.dart';
import 'package:one/presentation/widgets/dishCart.dart';
import 'package:one/presentation/widgets/dishImageGallery.dart';

class DishPage extends StatefulWidget {
  final DishCartState _dishCart;
  @override
  State<StatefulWidget> createState() => DishPageState(_dishCart);
  DishPage(this._dishCart);
}

class DishPageState extends State<DishPage> {
  final DishCartState dishCart;
  DishPageState(this.dishCart);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [BackButton()]),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            bottomNavigationBar: BottomTabBar(),
            body: TabBarView(
              children: [
                Flex(
                  direction: Axis.vertical,
                  children: [
                    Image(
                      alignment: Alignment.topCenter,
                      image: dishCart.assetImage,
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                    ),
                    Expanded(
                      child: Text(
                        dishCart.title,
                      ),
                    ),
                    Container(child: Text(dishCart.description))
                  ],
                ),
                DishImageCart(dishCart),
              ],
            ),
          ),
        ));
  }
}

Widget BottomTabBar() => Container(
      color: Colors.amber,
      child: TabBar(tabs: [
        Tab(
          icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.browse_gallery),
        )
      ]),
    );
