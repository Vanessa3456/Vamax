import 'package:flutter/material.dart';

class Food extends StatelessWidget{
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}