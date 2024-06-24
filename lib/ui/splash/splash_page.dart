import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:astrocom/ui/authenticate/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterSplashScreen.fadeIn(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.yellowAccent,
              Colors.white,
            ],
          ),
          childWidget: SizedBox(
            height: 250,
            child: Column(
              children: [
                Hero(
                  tag: "splash_icon",
                  child: Image.asset("assets/images/astro_star.png", width: double.maxFinite,
                    height: 100,),
                ),
                SizedBox(height: 50,),
                Text("Welcome to Astro App"),
              ],
            ),
          ),
          duration: const Duration(milliseconds: 3500),
          animationDuration: const Duration(milliseconds: 3000),
          onAnimationEnd: () => debugPrint("On Scale End"),
          nextScreen:  LoginPage(),
        )
    );
  }
}
