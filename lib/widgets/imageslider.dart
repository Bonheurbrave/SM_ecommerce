import 'package:flutter/material.dart';

class Imageslid extends StatefulWidget {
  const Imageslid({super.key});

  @override
  State<Imageslid> createState() => _ImageslidState();
}

class _ImageslidState extends State<Imageslid> {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: [
            Image.asset('images/slider5.jpg', height: 200,),
            Image.asset('images/slider1.jpg', height: 200,),
            Image.asset('images/slider2.jpg', height: 200,),
            Image.asset('images/slider3.jpg', height: 200,),
            Image.asset('images/slider4.jpg', height: 200,),
          ],
          )
        ),
      ),
    );
  }
}