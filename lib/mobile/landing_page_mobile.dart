import 'package:flutter/material.dart';
import 'package:vamax/components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  late FocusNode focusNode = FocusNode();
  final TextEditingController _searchController = TextEditingController();
  final int selectedIndex=0;

  void onTapItem(selectedIndex){
    if(selectedIndex == 0){
      Navigator.of(context).pushNamed("/home");
    }
    else if(selectedIndex == 1){
      Navigator.of(context).pushNamed("/category");
    }
    else if(selectedIndex == 2){
      Navigator.of(context).pushNamed("/cart");
    }
    else if(selectedIndex == 3){
      Navigator.of(context).pushNamed("/profile");
    }
  }

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          elevation: 20.0,
          backgroundColor: Colors.purpleAccent,
          iconTheme: const IconThemeData(
            color: Colors.black,
            size: 35.0,
          ),
          title: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFE5E4E2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextField(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
              focusNode: focusNode,
              controller: _searchController,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Search...',
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                prefixIcon: focusNode.hasFocus
                    ? null
                    : const Icon(Icons.search_outlined),
                suffixIcon: focusNode.hasFocus
                    ? IconButton(
                        onPressed: () {
                          _searchController.clear();
                        },
                        icon: const Icon(Icons.clear_outlined))
                    : null,
              ),
            ),
          ),
        ),






        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.purple,
            selectedLabelStyle: const TextStyle(color: Colors.orangeAccent),
            selectedItemColor: Colors.purpleAccent,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            currentIndex: selectedIndex,
            onTap: onTapItem,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined), label: "Category"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "Profile"),
            ]),
      ),
     );
  }
}
