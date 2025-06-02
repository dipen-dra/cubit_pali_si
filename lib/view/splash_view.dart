
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_flutter/view/dashboard_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      splash: Center(child: Image.network('https://www.shutterstock.com/image-photo/barcelona-feb-23-lionel-messi-260nw-1900547713.jpg')),
      nextScreen: DashboardView(),
    ) ;
  }
}