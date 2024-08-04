import 'package:all_widget/models/productmodel.dart';
import 'package:all_widget/widgets/addtocart.dart';
import 'package:flutter/material.dart';

class Productview extends StatelessWidget {
  final Products product;
  Productview({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Icon(Icons.share),
                ),
                Icon(
                  Icons.favorite,
                )
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                color: Colors.white,
                child: Center(child: Image.asset(product.image , width: 280 , height:280,))),
            Container(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, top: 20),
                        child: Text(
                          product.title,
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "\$${product.price}",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  Text(
                                    "${product.rate}",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Text(product.review),
                            )
                          ],
                        ),
                        Text("seller: ${product.seller}"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Colors",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            )),
                        Container(
                          child: Row(
                            children: [
                              for (int j = 0; j < product.color.length; j++)
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: product.color[j]),
                                )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 15),
                              child: Container(
                                child: Text(
                                  "Description",
                                  style: TextStyle(
                                      color: Colors.white),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                              )),
                        ),

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:25),
                            child: Align( alignment: Alignment.centerLeft,child: Text(product.description)),
                          ),
                        ),
                        Addtocart()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
