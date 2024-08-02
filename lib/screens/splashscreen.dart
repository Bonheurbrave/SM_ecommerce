import 'package:all_widget/screens/navigationbar.dart';
import 'package:flutter/material.dart';
import "package:animated_splash_screen/animated_splash_screen.dart";

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash:  Container(
        child: Center(
          child: Image.asset("images/logo.jpg"),
        ),
      ),
        nextScreen: Navigationbar(),
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
