import 'package:flutter/material.dart';
import "../models/productmodel.dart";

class Addtocartprovider extends ChangeNotifier {
  final List<Products> _cart = [];
  List<Products> get cart => _cart;
  void toggleFavorite(Products product){
    if(_cart.contains(product)){
      for(Products element in _cart){
        element.quantity ;
      }
    }else {
      _cart.add(product);
    }
    notifyListeners();
  }
}