import 'package:flutter/material.dart';

class Clothes extends StatelessWidget{
  const Clothes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}