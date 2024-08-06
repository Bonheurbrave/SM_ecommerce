import 'package:all_widget/models/productmodel.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{


//customer cart 
List <Products> _cart = [];

//getter method 
List<Products> get cart =>_cart;
List<Products> get productMenu =>productMenu;

//add to cart 
void addToCart(Products product , int quantity){
  for(int i = 0; i < quantity; i++){
    _cart.add(product);
  }
  notifyListeners();
}

//remove from cart 
void removeFromCart(Products product){
  _cart.remove(product);
  notifyListeners();
}

}