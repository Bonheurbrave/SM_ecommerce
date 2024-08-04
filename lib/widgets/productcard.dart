import 'package:all_widget/models/productmodel.dart';
import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {
  final Products product;
  const Productcard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    product.image,
                    height: 130,
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
