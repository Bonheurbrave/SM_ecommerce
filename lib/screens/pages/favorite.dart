import 'package:all_widget/models/productmodel.dart';
import 'package:all_widget/widgets/cartcard.dart';
import 'package:all_widget/widgets/favcard.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Center(child: Text("My favorites"),),
        ),
      ),
      body: ListView.builder(itemCount: products.length,itemBuilder: (context, index) {
        return Favcard(product: products[index]);
      }),
    );
  }
}
