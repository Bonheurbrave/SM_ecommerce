import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.shade100 , borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          decoration: InputDecoration(
              hintText: "search",
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.tune),
              )),
        ),
      ),
    );
  }
}
