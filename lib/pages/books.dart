import 'package:flutter/material.dart';

class Books extends StatelessWidget{
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}