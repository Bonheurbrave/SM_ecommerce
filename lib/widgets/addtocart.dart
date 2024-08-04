import 'package:flutter/material.dart';

class Addtocart extends StatefulWidget {
  const Addtocart({super.key});

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  int productq = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black , borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        if ( productq > 1){
                          productq -= 1;
                        }
                        
                      });
                    },
                    child: Text("-" , style: TextStyle(color: Colors.white),)),
                Text("${productq}" , style: TextStyle(color: Colors.white),),
                TextButton(
                    onPressed: () {
                      setState(() {
                        productq += 1;
                      });
                    },
                    child: Text("+" , style: TextStyle(color: Colors.white),)),
              ],
            ),
          ),
          Container(
            width: 230,
            height: 35,
            decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child: Text("Add to Cart" , style:TextStyle(color: Colors.white))),
          )
        ],
      ),
    );
  }
}
