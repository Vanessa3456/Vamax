import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final void Function()? onTap;

  const MyButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

    );
  }
}