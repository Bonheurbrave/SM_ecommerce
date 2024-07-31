import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        drawer: Drawer(
          child: Container(
            child: Column(
              children: [],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Homepage"),
        ),
        body: Container(
          child: Column(
            children: [
              Image.asset("images/homepageback.jpg"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.grey.shade300),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New Products"),
                        Row(
                          children: [
                            TextButton(onPressed: () {}, child: Text("More")),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          
                          Container(
                            child: Image.asset("images/homepageback.jpg"),
                          ),
                          
                          Container(
                            child: Image.asset("images/logo.jpg"),
                          ),
                          Container(
                            child: Image.asset("images/homepageback.jpg"),
                          ),
                          Container(
                            child: Image.asset("images/logo.jpg"),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
