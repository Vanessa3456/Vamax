import 'package:flutter/material.dart';
import 'package:vamax/components/my_mobile_tile.dart';
import 'package:vamax/modules/phone.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Available phones for sale',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Search'), Icon(Icons.search)],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Hot Picks',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.6, // Adjust for better aspect ratio
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              Phone phone = Phone(
                name: 'Redmi',
                description: 'A3',
                price: 11.0,
                imagePath: 'assets/itel.jfif',
              );
              return MyMobileTile(phone: phone);
            },
          ),
        ),
      ],
    );
  }
}
