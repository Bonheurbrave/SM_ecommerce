import 'package:flutter/material.dart';

class Headerbar extends StatefulWidget {
  const Headerbar({super.key});

  @override
  State<Headerbar> createState() => _HeaderbarState();
}

class _HeaderbarState extends State<Headerbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.grid_view_outlined , size: 30,)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none ,size: 30,))
          ],
        ),
      ),
    );
  }
}
