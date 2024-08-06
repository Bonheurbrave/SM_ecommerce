import 'package:all_widget/models/productmodel.dart';
import 'package:flutter/material.dart';

class Cartcard extends StatelessWidget {
  final Products product;
  const Cartcard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                product.image,
                width: 40,
              ),
              Column(
                children: [Text("${product.title}"), Text("${product.price}")],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete))
            ],
          ),
        ],
      ),
    );
  }
}
