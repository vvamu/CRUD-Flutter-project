import 'package:flutter/material.dart';
import 'package:one/presentation/createDishPage.dart';

class DishesPage extends StatelessWidget {
  const DishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dishes'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateDishPage()),
                );
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: Container(
        height: 300,
        width: double.maxFinite,
        child: TabBarView(children: [

        ]),
      ),
      /*
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),*/
    );
  }
}



