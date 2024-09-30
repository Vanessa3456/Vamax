import 'package:flutter/material.dart';
import 'package:vamax/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      child: Column(
        children: [
          //drawer header
          DrawerHeader(
            child: Icon(
              Icons.category,
              size: 72,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          const SizedBox(height: 25,),

          MyListTile(
            text:"Category", icon: Icons.category, onTap: ()=>Navigator.pop(context))



          ///categories
        ], //exit
      ),
    );
  }
}
