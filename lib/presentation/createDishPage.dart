import 'package:flutter/material.dart';

class CreateDishPage extends StatelessWidget {
  const CreateDishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create new dish'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
              Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
