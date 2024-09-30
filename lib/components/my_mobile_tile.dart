import 'package:flutter/material.dart';
import 'package:vamax/modules/phone.dart';

class MyMobileTile extends StatelessWidget {
  final Phone phone;

  const MyMobileTile({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(8)),
      //margin: const EdgeInsets.only(left: 10.0),
      margin: const EdgeInsets.all(15),
       padding: const EdgeInsets.all(25),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment
        //     .spaceBetween, //pushes the last widgt to the bottom
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(15),
                ),
                //width: double.infinity, //fill up the entire width
                // padding: const EdgeInsets.all(12),
                // child: Image.asset(product.imagePath)
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(child: Image.asset(phone.imagePath))),
              ),
              // const SizedBox(
              //   height: 10,
              // ),

              //product name
              Text(
                phone.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              // const SizedBox(
              //   height: 5,
              // ),

              //product description
              Text(phone.description),
            ],
          ),
          // const SizedBox(
          //   height: 5,
          // ),
        ],
      ),
    );
  }
}
