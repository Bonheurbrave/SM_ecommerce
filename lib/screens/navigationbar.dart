import 'package:all_widget/screens/pages/account.dart';
import 'package:all_widget/screens/pages/cartpage.dart';
import 'package:all_widget/screens/pages/favorite.dart';
import 'package:all_widget/screens/pages/gridpage.dart';
import 'package:all_widget/screens/pages/home.dart';
import 'package:flutter/material.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int currentIndex = 2;
  var currentscreens = [
    Home(),
    Favorite(),
    Home(),
    Cartpage(),
    AccountPage(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        foregroundColor: currentIndex == 2 ? Colors.white : Colors.black,
        backgroundColor: currentIndex == 2 ? Colors.red  : Colors.grey.shade700,
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        child: Icon(Icons.home),
        shape: CircleBorder(),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        notchMargin: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.grid_view_outlined,
                  color: currentIndex == 0 ? Colors.red : Colors.grey.shade700,
                )),
            IconButton(onPressed: () {
              setState(() {
                currentIndex = 1;
              });
            }, icon: Icon(Icons.favorite,
                  color: currentIndex == 1 ? Colors.red : Colors.grey.shade700,
            )),
            IconButton(onPressed: () {
              setState(() {
                currentIndex = 3;
              });
            }, icon: Icon(Icons.shopping_cart,
                  color: currentIndex == 3 ? Colors.red : Colors.grey.shade700,
            )),
            IconButton(onPressed: () {
              setState(() {
                currentIndex = 4;
              });
            }, icon: Icon(Icons.person,
                  color: currentIndex == 4 ? Colors.red : Colors.grey.shade700,
            )),
          ],
        ),
      ),
      body: currentscreens[currentIndex],
    );
  }
}
