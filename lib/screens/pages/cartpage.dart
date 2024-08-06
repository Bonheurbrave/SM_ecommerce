import 'package:all_widget/models/productmodel.dart';
import 'package:all_widget/widgets/cartcard.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: ListView.builder(itemCount: products.length,itemBuilder: (context, index) {
        return Cartcard(product: products[index]);
      }),
    );
  }
}
