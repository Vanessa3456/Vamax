// import 'package:collaborate/components/my_drawer.dart';
// import 'package:collaborate/components/my_product_tile.dart';
// import 'package:collaborate/modules/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vamax/components/bottom_bar_navigation.dart';
import 'package:vamax/components/my_drawer.dart';
import 'package:vamax/components/my_mobile_tile.dart';
import 'package:vamax/modules/phone.dart';
import 'package:vamax/modules/phones.dart';
import 'package:vamax/pages/bag.dart';
import 'package:vamax/pages/books.dart';
import 'package:vamax/pages/clothes.dart';
import 'package:vamax/pages/food.dart';
import 'package:vamax/pages/phone_page.dart';
// import 'package:provider/provider.dart';

class MobileCategory extends StatefulWidget {
  const MobileCategory({super.key});

  @override
  State<MobileCategory> createState() => _MobileCategoryState();
}
int _selectedIndex=0;

class _MobileCategoryState extends State<MobileCategory> {
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex=index;
    });
  }

  //pages to display
  final List<Widget>_pages=[
    const PhonePage(),
    const Food(),
    const Clothes(),
    const Bag(),
    const Books(),
 

  ];

  final title='';

  @override
  Widget build(BuildContext context) {
    //access the products in shop
    final products = context.watch<Phones>().shoe;
    //  final Product products;

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.secondary,
        
        // actions: [
        //   //go to cart button
        //   IconButton(onPressed: ()=>Navigator.pushNamed(context,'/cart_page'), icon: Icon(Icons.shopping_cart))
        // ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index)=>navigateBottomBar(index),
      ),
      drawer: MyDrawer(),
      body: _pages[_selectedIndex],

      // body: MyMobileTile(product: products[1])
      // body: ListView.builder(
      //     itemCount: products.length,
      //    // scrollDirection: Axis.vertical,
      //     padding: const EdgeInsets.all(15),
      //     itemBuilder: (context, index) {
      //       //get each individual mobile
      //       final product = products[index];
      //       return MyMobileTile(product: product);
      //     }),
    );
  }
}
