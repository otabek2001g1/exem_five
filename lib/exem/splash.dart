import 'package:exem_five/exem/consts.dart';
import 'package:exem_five/exem/second.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatelessWidget {
  static const String routeName = "/splash";
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.white,
      curve: Curves.bounceInOut,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      duration: 450,
      animationDuration: const Duration(milliseconds: 500),
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage(myImage.image1),
            fit: BoxFit.cover,
          ),
        ],
      ),
      nextScreen: const SecongPage(),
      splashIconSize: 900,
    );
  }
}
