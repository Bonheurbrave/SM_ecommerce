import 'package:flutter/material.dart';

class Products {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> color;
  final String category;
  final double rate;
  final int quantity;

  Products(
      {required this.title,
      required this.description,
      required this.image,
      required this.review,
      required this.seller,
      required this.price,
      required this.color,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Products> products = [
  Products(
    title: 'Product 1',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'https://example.com/image1.jpg',
    review: 'Great product!',
    seller: 'Seller 1',
    price: 19.99,
    color: [Colors.blue, Colors.green],
    category: 'Electronics',
    rate: 4.5,
    quantity: 100,
  ),
  Products(
      title: 'Product 2',
      description: 'Vestibulum non consectetur lectus.',
      image: 'https://example.com/image2.jpg',
      review: 'Fantastic!',
      seller: 'Seller 2',
      price: 12.99,
      color: [Colors.red, Colors.yellow],
      category: 'Clothing',
      rate: 4.8,
      quantity: 50),
      
  Products(
      title: "Product 3",
      description: "Lorem ipsum doler sit amet dolor",
      image: "https://example.com/image2.jpg",
      review: "fantastic",
      seller: "Natcom",
      price: 12.56,
      color: [Colors.red, Colors.green],
      category: "electronics",
      rate: 2.6,
      quantity: 2)
];
