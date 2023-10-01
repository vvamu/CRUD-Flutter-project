import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one/data/sqfliteRepository/repository/sqlRecipeRepository.dart';
import 'package:one/domain/models/recipe.dart';
import 'package:one/presentation/widgets/dishCart.dart';

class HomePage extends StatefulWidget {
  final List<Recipe> _dishes;
  HomePage(this._dishes);
  @override
  State<StatefulWidget> createState() => HomePageState(_dishes);
}

class HomePageState extends State<HomePage> {
  final List<Recipe> dishes;
  get countCarts => (MediaQuery.of(context).size.width / 400).floor();

  Future<List<Widget>> carts() async {
    var listCarts = <Widget>[];
    for (int i = 0; i < countCarts; i++) {
      listCarts.add(DishCart((i + 1 % 3).toString() + ".jpg"));
    }
    return listCarts;
  }

  void getCarts() async {
    var listing = await SqlRecipeRepository.getAll();
    print(listing);
  }

  Widget dishesList() => ListView.builder(itemBuilder: (item, index) {
        return Container(
          height: 450,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
          child: GestureDetector(child: Text("Click"), onTap: () => getCarts()),
        );
      });

  static const platform = MethodChannel('samples.flutter.dev/battery');
  String _batteryLevel = 'Unknown battery level.';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  HomePageState(this.dishes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.amberAccent,
          actions: [
            IconButton(
                icon: const Icon(Icons.settings,
                    color: Color(0xFF0000FF), size: 34.0),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          ////////
                          opaque: false,
                          pageBuilder: (BuildContext context, _, __) =>
                              MyPopup(_batteryLevel)));
                }),
          ],
        ),
        body: Center(child: dishesList()));
  }
}

Widget MyPopup(String batteryLevel) => AlertDialog(
      title: Text(batteryLevel.toString()),
    );
