import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final image;
  final price;
  final description;
  const ItemCard(
      {super.key,
      required this.image,
      required this.price,
      required this.description});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          SizedBox(
            child: Image.asset(widget.image),
          ),
          Text(widget.description),
          Text(widget.price),
        ],
      ),
    );
  }
}
