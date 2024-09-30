// import 'package:collaborate/modules/product.dart';
import 'package:flutter/material.dart';

import 'phone.dart';

class Phones extends ChangeNotifier{
  //products for sale
  final List<Phone> _phone = [
    Phone(name: 'Redmi', price: 89.0, description: 'Lets fly',imagePath: 'assets/redmi.jfif'),
    Phone(name: 'Samsung', price: 79.0, description: 'Cool',imagePath: 'assets/samsung.jfif'),
    Phone(name: 'Itel', price: 99.0, description: 'Nice ',imagePath: 'assets/itel.jfif'),
    Phone(name: 'Tecno', price: 69.0, description: 'Yeey ',imagePath: 'assets/tecno.jfif'),

    // Phone(name: 'PHONES', price: 89.0, description: 'View fly'),
    // Phone(name: 'FOOD', price: 79.0, description: 'Cool'),
    // Phone(name: 'SHOES', price: 99.0, description: 'Nice '),
    // Phone(name: 'CLOTHES', price: 69.0, description: 'Yeey '),
    
  ];

  //user cart
  List<Phone> _cart = [];

  //get product list
  List<Phone> get shoe => _phone;

  //get user cart
  List<Phone> get cart=> _cart;

  //add item to cart
  void addToCart(Phone item){
    _cart.add(item);
    notifyListeners();//update the UI
  }

  //remove item from cart
  void removeFromCart(Phone item){
    _cart.remove(item);
    notifyListeners();
  }

}
