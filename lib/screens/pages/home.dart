import 'package:all_widget/models/productmodel.dart';
import 'package:all_widget/widgets/category.dart';
import 'package:all_widget/widgets/headerbar.dart';
import 'package:all_widget/widgets/imageslider.dart';
import 'package:all_widget/widgets/productcard.dart';
import 'package:all_widget/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Headerbar(),
            SizedBox(
              height: 20,
            ),
            Searchbar(),
            SizedBox(
              height: 20,
            ),
            Imageslid(),
            SizedBox(
              height: 20,
            ),
            Category(),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Special for you" , style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              TextButton(onPressed: (){},child: Text("see all" , style: TextStyle(fontSize: 10),),)
            ],),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: products.length,
                itemBuilder: (context , index){
                  return Productcard(product: products[index]);
                }
                )
          ],
        ),
      ),
    );
  }
}
