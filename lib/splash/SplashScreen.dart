import 'package:flutter/material.dart';
import 'package:to_do_app/home/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() => Navigator.pushReplacementNamed(context, HomeScreen.routeName),);
    return Scaffold(
      body: Image.asset("assets/images/splash_light.png",
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,),
    );
  }
}
