import 'package:flutter/material.dart';
import 'package:one/domain/models/recipe.dart';
import 'package:one/presentation/homePage.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Recipe> dishes = [];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: /*const MyHomePage(title: ''),*/
            HomePage(dishes));
  }
}
