import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  var categories = [
    'Shoes',
    'Beauty',
    'Men',
    'jewelry',
    'Women',
    'Sports',
  ];
  var catimages = [
    "images/category/cat1.jpg",
    "images/category/cat2.jpg",
    "images/category/cat3.jpg",
    "images/category/cat4.jpg",
    "images/category/cat5.jpg",
    "images/category/cat6.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for (var i = 0; i < categories.length; i++) 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      
                      image: DecorationImage(
                        image: AssetImage(catimages[i]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(margin: EdgeInsets.only(left: 20),child: Text(categories[i]),),

                ],
              ),
            ],
          )
        
      ],),
    );
  }
}